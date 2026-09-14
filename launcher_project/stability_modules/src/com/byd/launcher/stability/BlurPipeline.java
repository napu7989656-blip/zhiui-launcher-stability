package com.byd.launcher.stability;

/** Owns the existing blur algorithm; the Android host keeps original UI behavior.
 * Only successful algorithm outputs are tracked here. Crop-internal allocation
 * failures still require cleanup at the allocation site.
 */
public final class BlurPipeline {
    public interface Host {
        boolean current();
        Object service();
        boolean post(Runnable task, long delay);
        void remove(Runnable task);
        boolean postChild(Object queue, Runnable task);
        void removeChild(Object queue, Runnable task);
        void commit(Object source, Object blurred, Runnable apply);
        boolean retry();
        void release(Object bitmap);
        void failed(RuntimeException error);
    }
    private static final ThreadLocal<Frame> WORK = new ThreadLocal<Frame>();
    private static final ThreadLocal<Frame> UI = new ThreadLocal<Frame>();
    private final Host host;
    private final LatestVisualWork work;
    private volatile Frame frame;
    private Runnable trigger;
    private volatile boolean closed;
    public BlurPipeline(final Host host) {
        if (host == null) throw new NullPointerException("host");
        this.host=host;
        work=new LatestVisualWork(new LatestVisualWork.Host() {
            public boolean post(Runnable task) { return host.post(task,0L); }
            public void remove(Runnable task) { host.remove(task); }
            public void failed(RuntimeException error) { host.failed(error); }
        });
    }
    // These lifecycle entry points run on the owner's main thread.
    public boolean current() { return !closed && host.current(); }
    private void cancelTrigger() {
        Runnable old=trigger; trigger=null;
        if (old!=null) try { host.remove(old); } catch (RuntimeException e) { report(e); }
    }
    private void cancelFrame() {
        Frame old=frame; frame=null;
        if (old!=null) old.cancelChildren();
        work.invalidate();
    }
    public void close() { closed=true; cancelTrigger(); cancelFrame(); work.close(); }
    public void schedule(final Runnable next) {
        cancelTrigger(); cancelFrame();
        if (!current() || next==null) return;
        enqueueTrigger(next,null,0L);
    }
    private void enqueueTrigger(final Runnable next, final Frame expected, long delay) {
        cancelTrigger();
        Runnable pending=new Runnable() {
            public void run() {
                if (trigger!=this) return;
                trigger=null;
                if (current() && (expected==null || expected.current())) next.run();
            }
        };
        trigger=pending;
        try { if (host.post(pending,delay)) return; } catch (RuntimeException e) { report(e); }
        if (trigger==pending) trigger=null;
    }
    public boolean execute(final Runnable algorithm) {
        cancelTrigger(); cancelFrame();
        if (!current() || algorithm==null) return false;
        LatestVisualWork.Request request=work.begin();
        if (request==null) return false;
        final Frame next=new Frame(this,request,host.service()); frame=next;
        return request.execute(new Runnable() {
            public void run() {
                if (!next.current()) return;
                WORK.set(next);
                try { algorithm.run(); }
                finally { WORK.remove(); if (!next.posted) next.discard(); }
            }
        });
    }
    private void report(RuntimeException error) { try { host.failed(error); } catch (RuntimeException ignored) { } }
    public static boolean workerCurrent() { Frame f=WORK.get();return f!=null && f.current(); }
    public static boolean deliveryCurrent() { Frame f=UI.get();return f!=null && f.current(); }
    public static void source(Object bitmap) { Frame f=WORK.get();if(f!=null) f.source=bitmap; }
    public static void retain(Object bitmap) { Frame f=WORK.get();if(f!=null) f.retain(bitmap); }
    public static void unused(Object bitmap) { Frame f=WORK.get();if(f!=null) f.release(bitmap); }
    public static void blurred(Object bitmap) { Frame f=WORK.get();if(f!=null) {f.blurred=bitmap;f.retain(bitmap);} }
    public static void publish(final Runnable apply) {
        Frame f=WORK.get(); if(f==null) return;
        f.apply=apply; f.posted=true; f.request.post(f);
    }
    public static void retry(final Runnable next, final long delay) {
        final Frame f=WORK.get(); if(f==null) return;
        f.posted=true;
        f.request.post(new LatestVisualWork.Result() {
            public void discard() { f.discard(); }
            public void deliver() {
                f.discard();
                if(f.current() && f.owner.host.retry()) f.owner.enqueueTrigger(next,f,delay);
            }
        });
    }
    public static boolean postChild(Object queue,Runnable action,int slot) {
        Frame f=UI.get(); return f!=null && f.postChild(queue,action,slot);
    }
    private static final class Frame implements LatestVisualWork.Result {
        final BlurPipeline owner; final LatestVisualWork.Request request; final Object service;
        // 3 crop outputs, scaled thumbnail and final blurred thumbnail.
        final Object[] owned=new Object[5]; int count;
        final Child[] children=new Child[3];
        Object source,blurred; Runnable apply; boolean posted,transferred;
        Frame(BlurPipeline owner,LatestVisualWork.Request request,Object service) {this.owner=owner;this.request=request;this.service=service;}
        boolean current() {return owner.frame==this && owner.current() && owner.host.service()==service && request.current();}
        void retain(Object image) {
            if(image==null || image==source) return;
            for(int i=0;i<count;i++)if(owned[i]==image)return;
            if(count==owned.length)throw new IllegalStateException("Unexpected blur allocation count");
            owned[count++]=image;
        }
        void release(Object image) { if(image!=null && image!=source) try {owner.host.release(image);}catch(RuntimeException e){owner.report(e);} }
        public void discard() {
            if(!transferred) for(int i=0;i<count;i++)release(owned[i]);
            for(int i=0;i<count;i++)owned[i]=null;
            count=0;source=null;blurred=null;apply=null;
        }
        public void deliver() {
            if(!current()) {discard();return;}
            // References transfer before any UI call: do not recycle a bitmap
            // already installed by a partially successful original UI delegate.
            Object acceptedSource=source,acceptedBlur=blurred;Runnable acceptedApply=apply;
            transferred=true;
            UI.set(this);
            try {owner.host.commit(acceptedSource,acceptedBlur,acceptedApply);}
            finally {UI.remove();discard();}
        }
        boolean postChild(Object queue,Runnable action,int slot) {
            if(slot<0 || slot>=children.length)throw new IllegalArgumentException("slot");
            if(!current() || action==null)return false;
            Child old=children[slot];if(old!=null)old.cancel();
            Child next=new Child(this,queue,action,slot);children[slot]=next;
            try {if(owner.host.postChild(queue,next))return true;}catch(RuntimeException e){owner.report(e);}
            if(children[slot]==next)children[slot]=null;next.action=null;return false;
        }
        void cancelChildren() {for(int i=0;i<children.length;i++){Child child=children[i];children[i]=null;if(child!=null)child.cancel();}}
    }
    private static final class Child implements Runnable {
        final Frame frame; final Object queue; final int slot; Runnable action;
        Child(Frame frame,Object queue,Runnable action,int slot){this.frame=frame;this.queue=queue;this.action=action;this.slot=slot;}
        void cancel(){action=null;try{frame.owner.host.removeChild(queue,this);}catch(RuntimeException e){frame.owner.report(e);}}
        public void run(){
            if(frame.children[slot]!=this)return;
            frame.children[slot]=null;Runnable accepted=action;action=null;
            if(accepted!=null && frame.current())accepted.run();
        }
    }
}

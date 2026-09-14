import com.byd.launcher.stability.MediaArtworkWork;
import com.byd.launcher.stability.LatestVisualWork;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

public final class MediaArtworkWorkTest {
    static int checks;
    static void check(boolean value) { checks++; if (!value) throw new AssertionError("check " + checks); }
    static void await(CountDownLatch latch) {
        try { if (!latch.await(5, TimeUnit.SECONDS)) throw new AssertionError("timeout"); }
        catch (InterruptedException e) { Thread.currentThread().interrupt(); throw new AssertionError(e); }
    }
    static final class Host implements MediaArtworkWork.Host {
        volatile Object session = new Object(); volatile boolean alive = true;
        boolean reject, postError, removeError, gateError, diagnosticError;
        final List<Runnable> queue = new ArrayList<>();
        final AtomicInteger errors = new AtomicInteger();
        final CountDownLatch reported = new CountDownLatch(1);
        public boolean current(Object observed) {
            if (gateError) throw new IllegalStateException("gate");
            return alive && session == observed;
        }
        public synchronized boolean post(Runnable r) {
            if (postError) throw new IllegalStateException("post");
            if (reject) return false;
            queue.add(r); return true;
        }
        public synchronized void remove(Runnable r) {
            if (removeError) throw new IllegalStateException("remove");
            queue.remove(r);
        }
        public void failed(RuntimeException e) {
            errors.incrementAndGet(); reported.countDown();
            if (diagnosticError) throw new IllegalStateException("diagnostic");
        }
        void flush() {
            List<Runnable> copy;
            synchronized(this) { copy=new ArrayList<>(queue);queue.clear(); }
            for(Runnable r:copy) r.run();
        }
    }
    static final class Frame implements MediaArtworkWork.Result {
        int delivered, discarded;
        boolean throwDeliver, throwDiscard;
        public void deliver() { delivered++; if(throwDeliver) throw new IllegalStateException("deliver"); }
        public void discard() { discarded++; if(throwDiscard) throw new IllegalStateException("discard"); }
        void accepted() { check(delivered==1 && discarded==0); }
        void rejected() { check(delivered==0 && discarded==1); }
    }
    static void directAndSession() {
        Host h=new Host();MediaArtworkWork owner=new MediaArtworkWork(h);
        check(owner.begin(null)==null);
        MediaArtworkWork.Request old=owner.begin(h.session);Frame a=new Frame();check(old.post(a));
        Runnable late=h.queue.get(0);
        MediaArtworkWork.Request fresh=owner.begin(h.session);a.rejected();Frame b=new Frame();check(fresh.post(b));
        late.run();a.rejected();h.flush();b.accepted();
        Frame c=new Frame();check(!old.post(c));c.rejected();
        check(!old.execute(()->{throw new AssertionError("stale work");}));
        Frame d=new Frame();check(fresh.post(d));h.session=new Object();h.flush();d.rejected();check(!fresh.current());
        MediaArtworkWork.Request now=owner.begin(h.session);Frame e=new Frame();check(now.post(e));h.alive=false;h.flush();e.rejected();
        owner.close();owner.close();check(owner.begin(h.session)==null);
        Frame afterClose=new Frame();check(!now.post(afterClose));afterClose.rejected();
    }
    static void slowOldVersusDirect() {
        Host h=new Host();MediaArtworkWork owner=new MediaArtworkWork(h);
        CountDownLatch entered=new CountDownLatch(1), release=new CountDownLatch(1), done=new CountDownLatch(1);
        Frame oldFrame=new Frame();MediaArtworkWork.Request old=owner.begin(h.session);
        check(old.execute(()->{entered.countDown();await(release);old.post(oldFrame);done.countDown();}));await(entered);
        MediaArtworkWork.Request direct=owner.begin(h.session);Frame latest=new Frame();check(direct.post(latest));h.flush();latest.accepted();
        release.countDown();await(done);h.flush();oldFrame.rejected();latest.accepted();owner.close();
    }
    static void queuePressureAndEviction() {
        Host runningHost=new Host();MediaArtworkWork running=new MediaArtworkWork(runningHost);
        CountDownLatch entered=new CountDownLatch(1), release=new CountDownLatch(1), exited=new CountDownLatch(1);
        MediaArtworkWork.Request block=running.begin(runningHost.session);
        check(block.execute(()->{entered.countDown();await(release);exited.countDown();}));await(entered);
        Host h=new Host();MediaArtworkWork owner=new MediaArtworkWork(h);AtomicInteger executed=new AtomicInteger();
        MediaArtworkWork.Request previous=null;CountDownLatch latestDone=new CountDownLatch(1);
        for(int i=0;i<4000;i++) {
            MediaArtworkWork.Request request=owner.begin(h.session);
            if(previous!=null) check(!previous.current());
            final int index=i;
            check(request.execute(()->{executed.incrementAndGet();if(index==3999)latestDone.countDown();}));
            check(!request.execute(()->executed.incrementAndGet()));previous=request;
        }
        check(executed.get()==0);check(previous.current());
        // A second owner evicts the queued request and its pending UI result.
        Frame evicted=new Frame();check(previous.post(evicted));
        Host otherHost=new Host();MediaArtworkWork other=new MediaArtworkWork(otherHost);
        CountDownLatch otherDone=new CountDownLatch(1);MediaArtworkWork.Request replacement=other.begin(otherHost.session);
        check(replacement.execute(otherDone::countDown));check(!previous.current());evicted.rejected();check(h.queue.isEmpty());
        release.countDown();await(exited);await(otherDone);check(executed.get()==0);
        running.close();owner.close();other.close();
    }
    static void failuresAndDisposal() {
        Host h=new Host();MediaArtworkWork owner=new MediaArtworkWork(h);
        MediaArtworkWork.Request request=owner.begin(h.session);check(!request.execute(null));check(!request.post(null));
        h.reject=true;Frame a=new Frame();check(!request.post(a));a.rejected();h.reject=false;
        h.postError=true;h.diagnosticError=true;Frame b=new Frame();check(!request.post(b));b.rejected();h.postError=false;
        Frame c=new Frame();c.throwDiscard=true;check(request.post(c));Runnable stale=h.queue.get(0);h.removeError=true;
        owner.invalidate();c.rejected();stale.run();c.rejected();h.removeError=false;h.flush();
        request=owner.begin(h.session);Frame d=new Frame();d.throwDeliver=true;check(request.post(d));h.flush();d.accepted();
        h.gateError=true;check(owner.begin(h.session)==null);check(h.errors.get()>=4);h.gateError=false;
        owner.close();
        Host failingHost=new Host();MediaArtworkWork failing=new MediaArtworkWork(failingHost);
        check(failing.begin(failingHost.session).execute(()->{throw new IllegalStateException("worker");}));await(failingHost.reported);check(failingHost.errors.get()==1);failing.close();
    }
    static void closeWhileRunning() {
        Host h=new Host();MediaArtworkWork owner=new MediaArtworkWork(h);
        CountDownLatch entered=new CountDownLatch(1), release=new CountDownLatch(1), done=new CountDownLatch(1);
        Frame frame=new Frame();MediaArtworkWork.Request request=owner.begin(h.session);
        check(request.execute(()->{entered.countDown();await(release);request.post(frame);done.countDown();}));await(entered);owner.close();release.countDown();await(done);frame.rejected();check(h.queue.isEmpty());
    }
    static void blurPoolIsIndependent() {
        CountDownLatch entered=new CountDownLatch(1), release=new CountDownLatch(1), done=new CountDownLatch(1);
        LatestVisualWork blur=new LatestVisualWork(new LatestVisualWork.Host() {
            public boolean post(Runnable r) { return false; }
            public void remove(Runnable r) { }
            public void failed(RuntimeException e) { throw new AssertionError(e); }
        });
        check(blur.begin().execute(()->{entered.countDown();await(release);done.countDown();}));await(entered);
        Host h=new Host();MediaArtworkWork media=new MediaArtworkWork(h);CountDownLatch mediaDone=new CountDownLatch(1);
        check(media.begin(h.session).execute(mediaDone::countDown));await(mediaDone);
        release.countDown();await(done);media.close();blur.close();
    }
    public static void main(String[] args) {
        directAndSession();slowOldVersusDirect();queuePressureAndEviction();failuresAndDisposal();closeWhileRunning();blurPoolIsIndependent();
        System.out.println("PASS "+checks+" assertions; real dedicated media executor, deterministic latches, fake UI/session/results; no Android integration");
    }
}

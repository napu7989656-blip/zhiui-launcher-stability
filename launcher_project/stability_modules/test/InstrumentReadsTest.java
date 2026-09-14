import com.byd.launcher.stability.InstrumentReads;
import java.util.*;
import java.util.concurrent.*;

public final class InstrumentReadsTest {
    static int assertions;
    static void check(boolean value) { assertions++; if (!value) throw new AssertionError(assertions); }
    static final class Host implements InstrumentReads.Host {
        final Thread main = Thread.currentThread();
        final List<Runnable> tasks = new ArrayList<>();
        final List<Long> times = new ArrayList<>();
        Object root = new Object(), cachedRoot;
        int cache=-1,shown=-1,count,refreshes,errors;
        boolean pending,alive=true,accept=true,acceptRetry=true,throwPost,throwRemove,throwUI;
        InstrumentReads state = new InstrumentReads(this);
        void mainOnly(){check(Thread.currentThread()==main);}
        public Object root(){mainOnly();return root;}
        public boolean usable(Object captured){mainOnly();return alive && captured!=null && (captured==root || root==null && captured==cachedRoot);}
        public int cached(){mainOnly();return cache;}
        public void commit(int value){mainOnly();cache=value;}
        public void retryState(int value,boolean waiting){mainOnly();count=value;pending=waiting;}
        public int[] delays(){return new int[]{150,350,700,1200,2000};}
        public synchronized boolean post(Runnable task,long delay){
            if(throwPost)throw new IllegalStateException("post");
            if(!accept || delay>0 && !acceptRetry)return false;
            tasks.add(task);times.add(delay);return true;
        }
        public synchronized void remove(Runnable task){
            if(throwRemove)throw new IllegalStateException("remove");
            int i=tasks.indexOf(task);if(i>=0){tasks.remove(i);times.remove(i);}
        }
        public void refresh(){mainOnly();refreshes++;}
        public void failed(RuntimeException ex){errors++;}
        Runnable ui(int value){return ()->{mainOnly();if(throwUI)throw new IllegalStateException("ui");shown=value;};}
        void one(){Runnable task; synchronized(this){task=tasks.remove(0);times.remove(0);}task.run();}
        void drain(){while(!tasks.isEmpty())one();}
    }
    public static void main(String[] args) throws Exception {
        Host h=new Host();InstrumentReads.Request old=h.state.begin(true),fresh=h.state.begin(false);
        fresh.complete(9,h.ui(9));old.complete(3,h.ui(3));check(h.cache==-1);h.drain();check(h.cache==9 && h.shown==9);
        // Initial setup and refresh share the same state; either can supersede the other.
        old=h.state.begin(false);fresh=h.state.begin(true);old.complete(3,h.ui(3));fresh.complete(8,h.ui(8));h.drain();check(h.cache==8);
        for(int mode=0;mode<6;mode++){
            h=new Host();old=h.state.begin(true);old.complete(3,h.ui(3));
            if(mode==0)h.state.invalidate();if(mode==1)h.alive=false;if(mode==2)h.root=new Object();
            if(mode==3)h.state.tracking(true);if(mode==4){h.state.tracking(true);h.state.tracking(false);}if(mode==5)h.state.begin(false);
            h.drain();check(h.cache==-1 && h.shown==-1);
        }
        h=new Host();old=h.state.begin(false);h.cachedRoot=h.root;h.root=null;old.complete(4,h.ui(4));h.drain();check(h.cache==4);
        h=new Host();old=h.state.begin(true);h.cachedRoot=h.root;h.root=new Object();old.complete(4,h.ui(4));h.drain();check(h.cache==-1);
        h=new Host();h.cache=4;h.state.applyCached(h.ui(4));old=h.state.begin(true);h.one();check(h.shown==4);old.complete(9,h.ui(9));h.drain();check(h.shown==9);
        h=new Host();h.cache=4;h.state.applyCached(h.ui(4));h.cache=9;h.drain();check(h.shown==-1);
        h=new Host();h.cache=4;h.state.applyCached(h.ui(4));h.state.invalidate();h.drain();check(h.shown==-1);
        h=new Host();old=h.state.begin(true);old.invalid();h.one();check(h.pending && h.count==1 && h.times.get(0)==150);h.one();check(!h.pending && h.refreshes==1);
        for(int i=1;i<5;i++){old=h.state.begin(true);old.invalid();h.one();check(h.pending && h.count==i+1);h.one();}
        old=h.state.begin(true);old.invalid();h.drain();check(!h.pending && h.refreshes==5);
        old=h.state.begin(true);old.complete(5,h.ui(5));h.drain();check(h.count==0 && h.cache==5);
        h=new Host();h.acceptRetry=false;old=h.state.begin(true);old.invalid();h.drain();check(!h.pending && h.count==0 && h.tasks.isEmpty());
        h=new Host();old=h.state.begin(false);old.invalid();h.drain();check(!h.pending && h.refreshes==0);
        h=new Host();old=h.state.begin(true);old.invalid();h.one();Runnable stale=h.tasks.get(0);h.state.invalidate();stale.run();check(!h.pending && h.refreshes==0 && h.count==0);
        h=new Host();h.accept=false;old=h.state.begin(true);old.complete(5,h.ui(5));check(h.cache==-1 && h.tasks.isEmpty());
        h=new Host();h.throwPost=true;old=h.state.begin(true);old.invalid();check(h.errors==1 && !h.pending);
        h=new Host();h.throwUI=true;old=h.state.begin(true);old.complete(5,h.ui(5));h.drain();check(h.cache==5 && h.errors==1);
        h=new Host();old=h.state.begin(true);old.complete(3,h.ui(3));Runnable removed=h.tasks.get(0);h.throwRemove=true;h.state.invalidate();removed.run();check(h.cache==-1 && h.errors==1);
        h=new Host();old=h.state.begin(true);old.complete(3,h.ui(3));old.complete(9,h.ui(9));check(h.tasks.size()==1);h.drain();check(h.cache==3);
        // Actual worker completes after main has invalidated and issued another query.
        h=new Host();final Host owner=h;final InstrumentReads.Request slow=h.state.begin(true);
        CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
        Thread worker=new Thread(()->{entered.countDown();try{release.await();}catch(InterruptedException e){throw new AssertionError(e);}slow.complete(2,owner.ui(2));});
        worker.start();check(entered.await(3,TimeUnit.SECONDS));h.state.invalidate();fresh=h.state.begin(true);fresh.complete(9,h.ui(9));release.countDown();worker.join(3000);check(!worker.isAlive());h.drain();check(h.cache==9);
        h=new Host();for(int i=0;i<10000;i++){old=h.state.begin(true);old.complete(i%11,h.ui(i%11));check(h.tasks.size()<=1);}h.drain();check(h.shown==9999%11);
        Host other=new Host();old=other.state.begin(true);h.state.invalidate();old.complete(7,other.ui(7));other.drain();check(other.cache==7);
        System.out.println("PASS: "+assertions+" assertions; real delayed worker, 10000 latest publications, cache/UI/close/drag/root/owner identity, retry limit/rejection/cancellation, exceptions. Host queue/UI doubles; no ART or vehicle.");
    }
}

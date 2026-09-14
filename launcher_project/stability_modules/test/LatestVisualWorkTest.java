import com.byd.launcher.stability.LatestVisualWork;
import java.util.*;
import java.util.concurrent.*;
import java.lang.reflect.*;

public final class LatestVisualWorkTest {
    static int checks;
    static void check(boolean value){checks++;if(!value)throw new AssertionError("check "+checks);}
    static class Host implements LatestVisualWork.Host {
        final List<Runnable> queue=new ArrayList<>(); boolean accept=true, failPost, failRemove, failLog; int errors;
        public boolean post(Runnable r){if(failPost)throw new IllegalStateException("post");if(accept)queue.add(r);return accept;}
        public void remove(Runnable r){if(failRemove)throw new IllegalStateException("remove");queue.remove(r);}
        public void failed(RuntimeException e){errors++;if(failLog)throw new IllegalStateException("log");}
    }
    static class Result implements LatestVisualWork.Result {
        int shown,discarded;boolean throwDiscard,throwDeliver;
        public void deliver(){shown++;if(throwDeliver)throw new IllegalStateException("deliver");}
        public void discard(){discarded++;if(throwDiscard)throw new IllegalStateException("discard");}
    }
    public static void main(String[] args)throws Exception{
        Host h=new Host();LatestVisualWork owner=new LatestVisualWork(h);
        List<Runnable> late=new ArrayList<>();List<Result> results=new ArrayList<>();
        for(int i=0;i<1000;i++){
            LatestVisualWork.Request r=owner.begin();Result value=new Result();check(r.post(value));check(h.queue.size()==1);late.add(h.queue.get(0));results.add(value);
        }
        for(Runnable r:late)r.run();
        for(int i=0;i<results.size();i++){Result r=results.get(i);check(r.shown==(i==999?1:0));check(r.discarded==(i==999?0:1));}
        LatestVisualWork.Request old=owner.begin(),fresh=owner.begin();Result stale=new Result();check(!old.post(stale));check(stale.discarded==1);check(fresh.current());
        for(String mode:Arrays.asList("reject","postThrow","removeThrow","discardThrow","deliverThrow")){
            Host host=new Host();LatestVisualWork state=new LatestVisualWork(host);Result value=new Result();LatestVisualWork.Request r=state.begin();
            if(mode.equals("reject"))host.accept=false;if(mode.equals("postThrow"))host.failPost=true;
            if(mode.equals("removeThrow")){host.failRemove=true;host.failLog=true;}
            if(mode.equals("discardThrow")){value.throwDiscard=true;host.failLog=true;}
            if(mode.equals("deliverThrow"))value.throwDeliver=true;
            r.post(value);List<Runnable> callbacks=new ArrayList<>(host.queue);
            if(mode.equals("deliverThrow"))callbacks.get(0).run();else state.close();
            for(Runnable task:callbacks)task.run();
            check(value.shown==(mode.equals("deliverThrow")?1:0));check(value.discarded==(mode.equals("deliverThrow")?0:1));state.close();check(state.begin()==null);
        }
        Field field=LatestVisualWork.class.getDeclaredField("POOL");field.setAccessible(true);ThreadPoolExecutor pool=(ThreadPoolExecutor)field.get(null);
        CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);List<Integer> ran=Collections.synchronizedList(new ArrayList<>());
        LatestVisualWork active=new LatestVisualWork(new Host());LatestVisualWork.Request running=active.begin();Result interruptedResult=new Result();
        try{
            check(running.execute(()->{entered.countDown();try{if(!release.await(8,TimeUnit.SECONDS))throw new AssertionError("timeout");}catch(InterruptedException e){throw new AssertionError("must not interrupt",e);}running.post(interruptedResult);}));check(entered.await(5,TimeUnit.SECONDS));
            active.close();
            LatestVisualWork queued=new LatestVisualWork(new Host());LatestVisualWork.Request previous=null;
            for(int i=0;i<1000;i++){LatestVisualWork.Request r=queued.begin();final int n=i;check(r.execute(()->ran.add(n)));check(!r.execute(()->ran.add(-1)));check(pool.getQueue().size()==1);if(previous!=null)check(!previous.current());previous=r;}
            release.countDown();pool.shutdown();check(pool.awaitTermination(5,TimeUnit.SECONDS));check(ran.equals(Arrays.asList(999)));check(interruptedResult.shown==0&&interruptedResult.discarded==1);
            LatestVisualWork.Request rejected=new LatestVisualWork(new Host()).begin();check(!rejected.execute(()->{}));check(!rejected.current());
        }finally{release.countDown();pool.shutdownNow();}
        System.out.println("PASS "+checks+" assertions; production latest visual work, real worker, invalidation and result disposal. Android bridge not yet integrated.");
    }
}

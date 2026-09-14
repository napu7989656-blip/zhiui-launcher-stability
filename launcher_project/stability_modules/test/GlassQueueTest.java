import com.byd.launcher.stability.QuickSettingsReadExecutor;
import com.byd.launcher.stability.QuickSettingsLifetime.Owner;
import com.byd.launcher.stability.TileSlot;
import java.lang.reflect.Field;
import java.util.*;
import java.util.concurrent.*;

/** Production pool category coexistence and two independent production result slots. */
public final class GlassQueueTest {
    static int assertions;
    static void check(boolean ok) { assertions++; if(!ok)throw new AssertionError("check "+assertions); }
    static final class Queue implements TileSlot.Queue {
        final List<Runnable> tasks=new ArrayList<>();
        public boolean post(Runnable task){tasks.add(task);return true;}
        public void remove(Runnable task){tasks.remove(task);}
        public void failed(RuntimeException e){throw e;}
    }
    public static void main(String[] args) throws Exception {
        int glass=Integer.parseInt(args[0]);check(glass==9);
        Field f=QuickSettingsReadExecutor.class.getDeclaredField("POOL");f.setAccessible(true);
        ThreadPoolExecutor pool=(ThreadPoolExecutor)f.get(null);
        CountDownLatch entered=new CountDownLatch(2), release=new CountDownLatch(1);
        Runnable blocker=()->{entered.countDown();try{if(!release.await(8,TimeUnit.SECONDS))throw new AssertionError("wait");}catch(InterruptedException e){Thread.currentThread().interrupt();}};
        List<String> ran=Collections.synchronizedList(new ArrayList<>());Owner owner=new Owner();
        try {
            check(QuickSettingsReadExecutor.execute(new Owner(),-1,blocker));check(QuickSettingsReadExecutor.execute(new Owner(),-1,blocker));check(entered.await(5,TimeUnit.SECONDS));
            check(QuickSettingsReadExecutor.execute(owner,1,()->ran.add("instrument")));
            check(QuickSettingsReadExecutor.execute(owner,2,()->ran.add("nav")));
            for(int i=0;i<1000;i++){final int n=i;check(QuickSettingsReadExecutor.execute(owner,glass,()->ran.add("glass"+n)));check(pool.getQueue().size()==3);}
            release.countDown();pool.shutdown();check(pool.awaitTermination(5,TimeUnit.SECONDS));check(new HashSet<>(ran).equals(new HashSet<>(Arrays.asList("instrument","nav","glass999"))));
        } finally {release.countDown();pool.shutdownNow();}
        Queue queue=new Queue();TileSlot prepare=new TileSlot(),result=new TileSlot();int[] delivered={0};
        List<Runnable> stale=new ArrayList<>();
        for(int i=0;i<1000;i++){
            check(prepare.begin().post(queue,()->delivered[0]++));check(result.begin().post(queue,()->delivered[0]++));check(queue.tasks.size()==2);stale.addAll(queue.tasks);
        }
        for(Runnable r:stale)r.run();check(delivered[0]==2);
        prepare.begin().post(queue,()->delivered[0]++);result.begin().post(queue,()->delivered[0]++);List<Runnable> pending=new ArrayList<>(queue.tasks);prepare.invalidate();result.invalidate();for(Runnable r:pending)r.run();check(delivered[0]==2);
        System.out.println("PASS "+assertions+" assertions; real production pool workers, key9 coexistence, independent prepare/result slots; no Android/vehicle work.");
    }
}

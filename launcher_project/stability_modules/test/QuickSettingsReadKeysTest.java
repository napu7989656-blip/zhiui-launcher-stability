import com.byd.launcher.stability.QuickSettingsReadExecutor;
import com.byd.launcher.stability.QuickSettingsLifetime.Owner;
import java.lang.reflect.Field;
import java.util.concurrent.*;
import java.util.*;

/** Actual queue, with numeric keys extracted from audited smali by the runner. */
public final class QuickSettingsReadKeysTest {
    public static void main(String[] args) throws Exception {
        int instrument=Integer.parseInt(args[0]), initial=Integer.parseInt(args[1]), poll=Integer.parseInt(args[2]);
        boolean fixed=Boolean.parseBoolean(args[3]);
        Field f=QuickSettingsReadExecutor.class.getDeclaredField("POOL");f.setAccessible(true);
        ThreadPoolExecutor pool=(ThreadPoolExecutor)f.get(null);
        CountDownLatch entered=new CountDownLatch(2),release=new CountDownLatch(1);
        Runnable blocker=()->{entered.countDown();try{if(!release.await(8,TimeUnit.SECONDS))throw new AssertionError("timeout");}catch(InterruptedException e){Thread.currentThread().interrupt();}};
        List<String> results=Collections.synchronizedList(new ArrayList<>());
        try {
            QuickSettingsReadExecutor.execute(new Owner(),-1,blocker);
            QuickSettingsReadExecutor.execute(new Owner(),-1,blocker);
            if(!entered.await(5,TimeUnit.SECONDS))throw new AssertionError("workers not entered");
            Owner owner=new Owner();
            QuickSettingsReadExecutor.execute(owner,instrument,()->results.add("instrument"));
            QuickSettingsReadExecutor.execute(owner,initial,()->results.add("old_nav"));
            QuickSettingsReadExecutor.execute(owner,poll,()->results.add("new_nav"));
            if(pool.getQueue().size()!=2)throw new AssertionError("queue size");
            release.countDown();pool.shutdown();
            if(!pool.awaitTermination(5,TimeUnit.SECONDS))throw new AssertionError("termination");
            Set<String> expected=new HashSet<>(Arrays.asList(fixed?"instrument":"old_nav","new_nav"));
            if(!new HashSet<>(results).equals(expected))throw new AssertionError(results.toString());
            System.out.println((fixed?"PASS corrected categories":"REPRODUCED parent collision")+": "+results+"; production executor, real JVM workers, isolated lifetime/Log doubles.");
        } finally {release.countDown();pool.shutdownNow();}
    }
}

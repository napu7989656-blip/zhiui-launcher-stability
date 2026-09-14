import com.byd.launcher.stability.ReadAfterAction;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
public final class ReadAfterActionTest {
    static int assertions;
    static void check(boolean value) { assertions++;if(!value)throw new AssertionError(assertions); }
    public static void main(String[] args) throws Exception {
        ReadAfterAction gate=new ReadAfterAction();check(!gate.blocked(0));
        ReadAfterAction.Token old=gate.begin(100);check(gate.blocked(15099));check(!gate.blocked(15100));check(!old.finish());
        for(int i=0;i<10000;i++) {
            old=gate.begin(i);ReadAfterAction.Token latest=gate.begin(i+1);
            check(!old.finish());check(gate.blocked(i+2));check(latest.finish());check(!gate.blocked(i+2));check(!latest.finish());
        }
        old=gate.begin(0);gate.reset();check(!old.finish());check(!gate.blocked(1));
        final ReadAfterAction.Token delayed=gate.begin(100);
        CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1),done=new CountDownLatch(1);
        final boolean[] removed={true};
        Thread worker=new Thread(() -> {
            entered.countDown();try { if(!release.await(5,TimeUnit.SECONDS))throw new AssertionError("timeout");removed[0]=delayed.finish(); }
            catch(InterruptedException e){Thread.currentThread().interrupt();throw new AssertionError(e);}finally{done.countDown();}
        });worker.start();check(entered.await(5,TimeUnit.SECONDS));
        ReadAfterAction.Token latest=gate.begin(101);release.countDown();check(done.await(5,TimeUnit.SECONDS));worker.join();
        check(!removed[0]);check(gate.blocked(102));check(latest.finish());check(!gate.blocked(103));
        System.out.println("PASS: "+assertions+" assertions; timeout boundary, 10000 old/new action completions, duplicate reply, reset and real delayed callback. No actions executed, no Android runtime.");
    }
}

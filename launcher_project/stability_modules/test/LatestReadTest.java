import com.byd.launcher.stability.LatestRead;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class LatestReadTest {
    private static int assertions;
    private static void check(boolean value) { assertions++;if(!value)throw new AssertionError(assertions); }
    public static void main(String[] args) throws Exception {
        LatestRead first=new LatestRead(), second=new LatestRead();
        LatestRead.Ticket old=first.issue();check(old.isCurrent());
        LatestRead.Ticket latest=first.issue();check(!old.isCurrent());check(latest.isCurrent());
        LatestRead.Ticket other=second.issue();first.invalidate();check(!latest.isCurrent());check(other.isCurrent());
        LatestRead.Ticket reopen=first.issue();check(reopen.isCurrent());check(!old.isCurrent());
        first.invalidate();first.invalidate();check(!reopen.isCurrent());
        LatestRead.Ticket running=first.issue();
        final CountDownLatch entered=new CountDownLatch(1), release=new CountDownLatch(1);
        final boolean[] accepted={true};final Throwable[] failure={null};
        Thread worker=new Thread(() -> {
            entered.countDown();
            try { if(!release.await(3,TimeUnit.SECONDS))throw new AssertionError("release timeout");accepted[0]=running.isCurrent(); }
            catch(Throwable t){failure[0]=t;}
        });
        worker.start();check(entered.await(3,TimeUnit.SECONDS));
        LatestRead.Ticket newer=first.issue();release.countDown();worker.join(3000);
        check(!worker.isAlive() && failure[0]==null);check(!accepted[0]);check(newer.isCurrent());
        for(int i=0;i<10000;i++){LatestRead.Ticket prior=newer;newer=first.issue();check(!prior.isCurrent());}
        check(newer.isCurrent());check(other.isCurrent());
        System.out.println("PASS: "+assertions+" assertions; latest ticket, close/reopen invalidation, owner isolation, real delayed worker and 10000 replacements. Pure Java; no Android runtime.");
    }
}

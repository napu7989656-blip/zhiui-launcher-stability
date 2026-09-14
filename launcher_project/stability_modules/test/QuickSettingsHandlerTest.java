import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byd.launcher.stability.QuickSettingsHandler;
import com.byd.launcher.stability.QuickSettingsLifetime.Owner;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class QuickSettingsHandlerTest {
    private static int assertions;
    private static void check(boolean ok) { assertions++; if (!ok) throw new AssertionError(assertions); }
    public static void main(String[] args) throws Exception {
        final int[] updates = {0}; Runnable viewOnly = () -> updates[0]++;
        Owner owner = new Owner(); QuickSettingsHandler q = new QuickSettingsHandler(owner);
        check(q.looper == Looper.getMainLooper());
        check(q.post(viewOnly)); check(q.postDelayed(viewOnly, 8000)); check(q.lastTime == 8000);
        q.drain(); check(updates[0] == 2);
        q.accepting = false; check(!q.post(viewOnly)); check(q.messages.isEmpty()); q.accepting = true;
        q.post(viewOnly); owner.disposed = true; q.drain(); check(updates[0] == 2);
        int sends = q.sends; check(!q.post(viewOnly)); check(q.sends == sends);
        q.postAtFrontOfQueue(viewOnly); q.drain(); check(updates[0] == 2);
        // Destruction after a message was dequeued but before callback dispatch.
        q.dispatchMessage(new Message(viewOnly)); check(updates[0] == 2);
        Owner deadService = new Owner(); deadService.serviceDestroyed = true;
        QuickSettingsHandler d = new QuickSettingsHandler(deadService);
        check(!d.post(viewOnly)); d.dispatchMessage(new Message(viewOnly)); check(updates[0] == 2);
        // Owner isolation: a newly created controller cannot revive an old queue.
        QuickSettingsHandler fresh = new QuickSettingsHandler(new Owner());
        check(fresh.post(viewOnly)); fresh.drain(); check(updates[0] == 3);
        check(!q.post(viewOnly));
        // Real worker pauses after first lifetime check, before enqueue.
        final Owner racingOwner = new Owner();
        final QuickSettingsHandler racing = new QuickSettingsHandler(racingOwner);
        final CountDownLatch entered = new CountDownLatch(1), release = new CountDownLatch(1);
        racing.beforeEnqueue = () -> { entered.countDown(); try {
            if (!release.await(3, TimeUnit.SECONDS)) throw new AssertionError("release timeout");
        } catch (InterruptedException e) { throw new AssertionError(e); } };
        final boolean[] accepted = {true}; final Throwable[] error = {null};
        Thread worker = new Thread(() -> { try {accepted[0] = racing.post(viewOnly);} catch(Throwable t) {error[0]=t;} });
        worker.start(); check(entered.await(3, TimeUnit.SECONDS));
        racingOwner.disposed = true; racing.removeCallbacksAndMessages(null); release.countDown();
        worker.join(3000); check(!worker.isAlive() && error[0] == null);
        check(!accepted[0]); check(racing.messages.isEmpty()); check(racing.removals == 2);
        // Platform enqueue completed, then destruction occurs before the recheck.
        final Owner afterOwner = new Owner(); final QuickSettingsHandler after = new QuickSettingsHandler(afterOwner);
        after.afterEnqueue = () -> afterOwner.disposed = true;
        check(!after.post(viewOnly)); check(after.messages.isEmpty());
        // Reproduce the original Handler's clear-then-late-post defect.
        Handler original = new Handler(Looper.getMainLooper()); original.removeCallbacksAndMessages(null);
        original.post(viewOnly); original.drain(); check(updates[0] == 4);
        System.out.println("PASS: " + assertions + " assertions; original late callback reproduced, live dispatch, queue rejection, dead owner/service, dequeued/front messages and real worker clear-before-enqueue race. Android doubles, not ART.");
    }
}

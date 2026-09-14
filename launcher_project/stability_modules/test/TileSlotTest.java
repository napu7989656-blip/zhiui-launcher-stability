import com.byd.launcher.stability.TileSlot;
import com.byd.launcher.stability.TileBatch;
import java.util.*;
import java.util.concurrent.*;

public final class TileSlotTest {
    static int assertions;
    static void check(boolean v){assertions++;if(!v)throw new AssertionError(assertions);}
    static class Queue implements TileSlot.Queue {
        List<Runnable> tasks=new ArrayList<>();List<Integer> seen=new ArrayList<>();
        boolean accept=true,failPost,failRemove;int errors;
        public boolean post(Runnable r){if(failPost)throw new IllegalStateException("post");if(accept)tasks.add(r);return accept;}
        public void remove(Runnable r){if(failRemove)throw new IllegalStateException("remove");tasks.remove(r);}
        public void failed(RuntimeException e){errors++;}
        void drain(){while(!tasks.isEmpty())tasks.remove(0).run();}
    }
    public static void main(String[] args)throws Exception{
        Queue q=new Queue();TileSlot slot=new TileSlot();TileSlot.Ticket old=slot.begin(),fresh=slot.begin();
        check(!old.post(q,()->q.seen.add(3)));check(fresh.post(q,()->q.seen.add(9)));q.drain();check(q.seen.equals(Arrays.asList(9)));
        old=slot.begin();old.post(q,()->q.seen.add(3));Runnable dequeued=q.tasks.get(0);slot.invalidate();dequeued.run();check(q.seen.size()==1 && q.tasks.isEmpty());
        TileSlot.Ticket same=slot.begin();same.post(q,()->q.seen.add(1));same.post(q,()->q.seen.add(2));check(q.tasks.size()==1);q.drain();check(q.seen.get(1)==2);
        q.accept=false;check(!slot.begin().post(q,()->q.seen.add(0)));check(q.tasks.isEmpty());q.accept=true;
        q.failPost=true;check(!slot.begin().post(q,()->{}));check(q.errors==1);q.failPost=false;
        old=slot.begin();old.post(q,()->q.seen.add(3));q.failRemove=true;slot.invalidate();q.drain();check(q.seen.size()==2 && q.errors==2);q.failRemove=false;
        slot.begin().post(q,()->{throw new IllegalArgumentException("UI");});q.drain();check(q.errors==3);
        // Two overlapping full/single-tile requests only supersede their shared tile.
        Object owner=new Object(),root=new Object(),epoch=new Object(),one=new Object(),two=new Object(),frame=new Object(),action=new Object();
        TileSlot s1=new TileSlot(),s2=new TileSlot();TileBatch all=new TileBatch(owner,root,epoch,q);
        all.capture(one,s1,frame,action);all.capture(two,s2,frame,action);
        TileBatch single=new TileBatch(owner,root,epoch,q);single.capture(one,s1,frame,action);
        check(!all.current(one) && all.current(two) && single.current(one));
        check(all.entry(two).frame==frame && all.entry(two).action==action);
        check(!all.post(one,()->q.seen.add(11)));check(all.post(two,()->q.seen.add(22)));check(single.post(one,()->q.seen.add(33)));q.drain();check(q.seen.subList(2,4).equals(Arrays.asList(22,33)));
        check(!all.current(new Object()) && !all.post(null,()->{}));
        // Value-equal keys must not alias different logical tile objects.
        Object a=new String("tile"),b=new String("tile");TileBatch batch=new TileBatch(owner,root,epoch,q);batch.capture(a,new TileSlot(),frame,action);check(batch.entry(b)==null);
        for(int i=0;i<10000;i++){final int value=i;check(slot.begin().post(q,()->q.seen.add(value)));check(q.tasks.size()==1);}q.drain();check(q.seen.get(q.seen.size()-1)==9999);
        // Real late worker; coordination orders only completion, not simulated thread execution.
        final TileSlot.Ticket slow=slot.begin();CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
        Thread worker=new Thread(()->{entered.countDown();try{release.await();}catch(InterruptedException e){throw new AssertionError(e);}slow.post(q,()->q.seen.add(-2));});
        worker.start();check(entered.await(3,TimeUnit.SECONDS));slot.begin().post(q,()->q.seen.add(99));release.countDown();worker.join(3000);check(!worker.isAlive());q.drain();check(q.seen.get(q.seen.size()-1)==99);
        System.out.println("PASS: "+assertions+" assertions; real late worker, 10000 bounded per-tile results, overlapping batch/single requests, identity keys, rejection/removal/UI failures. Queue/UI doubles; no Android or vehicle.");
    }
}

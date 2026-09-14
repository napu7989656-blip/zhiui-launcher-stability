import com.byd.launcher.stability.BlurPipeline;
import java.util.*;
import java.util.concurrent.*;
public final class BlurPipelineTest {
 static int checks;
 static void ok(boolean value){checks++;if(!value)throw new AssertionError("check "+checks);}
 static class Image {boolean released;}
 static class Host implements BlurPipeline.Host {
  boolean alive=true,accept=true,throwCommit;Object service=new Object(),source,blur;int commits,retries,errors;
  List<Runnable> queue=Collections.synchronizedList(new ArrayList<Runnable>());
  public boolean current(){return alive;}
  public Object service(){return service;}
  public boolean post(Runnable r,long delay){if(!accept)return false;queue.add(r);return true;}
  public void remove(Runnable r){queue.remove(r);}
  public boolean postChild(Object q,Runnable r){return post(r,0);}
  public void removeChild(Object q,Runnable r){remove(r);}
  public void commit(Object s,Object b,Runnable apply){source=s;blur=b;commits++;if(throwCommit)throw new IllegalStateException();apply.run();}
  public boolean retry(){if(retries>=5)return false;retries++;return true;}
  public void release(Object b){Image i=(Image)b;ok(!i.released);i.released=true;}
  public void failed(RuntimeException e){errors++;}
  void drain(){for(;;){Runnable r;synchronized(queue){if(queue.isEmpty())return;r=queue.remove(0);}r.run();}}
 }
 static void waitDone(CountDownLatch done)throws Exception{ok(done.await(5,TimeUnit.SECONDS));}
 static void barrier(BlurPipeline pipe)throws Exception{
  CountDownLatch done=new CountDownLatch(1);pipe.execute(()->done.countDown());waitDone(done);
 }
 public static void main(String[]args)throws Exception{
  for(String scenario:new String[]{"commit","new","closed","service","dead","rejected","throw"}){
   Host host=new Host();BlurPipeline pipe=new BlurPipeline(host);Image src=new Image(),crop=new Image(),blur=new Image(),unused=new Image();CountDownLatch done=new CountDownLatch(1);
   pipe.execute(()->{BlurPipeline.source(src);BlurPipeline.unused(unused);BlurPipeline.retain(crop);BlurPipeline.retain(crop);BlurPipeline.blurred(blur);BlurPipeline.publish(()->{});done.countDown();});waitDone(done);
   ok(unused.released && !src.released && !crop.released && !blur.released);
   if(scenario.equals("new"))barrier(pipe);
   if(scenario.equals("closed"))pipe.close();
   if(scenario.equals("service"))host.service=new Object();
   if(scenario.equals("dead"))host.alive=false;
   if(scenario.equals("rejected")){pipe.schedule(()->{});host.accept=false;}
   if(scenario.equals("throw"))host.throwCommit=true;
   host.drain();boolean committed=scenario.equals("commit")||scenario.equals("throw");
   ok(host.commits==(committed?1:0));ok(crop.released!=committed && blur.released!=committed && !src.released);pipe.close();
  }
  for(String scenario:new String[]{"normal","new","closed","service"}){
   Host host=new Host();BlurPipeline pipe=new BlurPipeline(host);int[] ran={0};CountDownLatch done=new CountDownLatch(1);
   pipe.execute(()->{BlurPipeline.publish(()->{for(int i=0;i<3;i++)for(int j=0;j<1000;j++)ok(BlurPipeline.postChild(host,()->ran[0]++,i));});done.countDown();});waitDone(done);
   Runnable delivery=host.queue.remove(0);delivery.run();ok(host.queue.size()==3);
   if(scenario.equals("new"))barrier(pipe);if(scenario.equals("closed"))pipe.close();if(scenario.equals("service"))host.service=new Object();
   host.drain();ok(ran[0]==(scenario.equals("normal")?3:0));pipe.close();
  }
  Host h=new Host();BlurPipeline p=new BlurPipeline(h);int[] run={0};
  for(int i=0;i<1000;i++)p.schedule(()->run[0]++);ok(h.queue.size()==1);h.drain();ok(run[0]==1);
  for(int i=0;i<7;i++){CountDownLatch done=new CountDownLatch(1);p.execute(()->{BlurPipeline.retry(()->run[0]++,500);done.countDown();});waitDone(done);h.drain();}
  ok(h.retries==5 && run[0]==6);
  CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1),finished=new CountDownLatch(1);Image src=new Image(),image=new Image();
  p.execute(()->{BlurPipeline.source(src);BlurPipeline.retain(image);entered.countDown();try{release.await();}catch(InterruptedException e){throw new AssertionError(e);}BlurPipeline.publish(()->run[0]++);finished.countDown();});waitDone(entered);p.close();release.countDown();waitDone(finished);h.drain();ok(image.released&&!src.released&&run[0]==6);
  System.out.println("PASS "+checks+" assertions; real bounded worker, source ownership, invalidation, children and retries; Android bridge still requires integration checks.");
 }
}

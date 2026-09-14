import com.byd.launcher.stability.BlurPipeline;
import java.util.*;
import java.util.concurrent.*;
public final class BlurFailureOwnershipTest {
 static int checks;
 static void ok(boolean b){checks++;if(!b)throw new AssertionError();}
 public static void main(String[]args)throws Exception{
  Thread.UncaughtExceptionHandler old=Thread.getDefaultUncaughtExceptionHandler();CountDownLatch severe=new CountDownLatch(1);
  Thread.setDefaultUncaughtExceptionHandler((thread,error)->{if(error instanceof TestError)severe.countDown();else throw new AssertionError(error);});
  try{
   for(boolean error:new boolean[]{false,true}){
    Object source=new Object(),scaled=new Object(),blur=new Object();List<Object> released=Collections.synchronizedList(new ArrayList<Object>());CountDownLatch done=new CountDownLatch(2);
    BlurPipeline.Host host=new BlurPipeline.Host(){
     public boolean current(){return true;}public Object service(){return this;}
     public boolean post(Runnable r,long d){throw new AssertionError("No failed image may publish");}public void remove(Runnable r){}
     public boolean postChild(Object q,Runnable r){throw new AssertionError();}public void removeChild(Object q,Runnable r){}
     public void commit(Object s,Object b,Runnable r){throw new AssertionError();}public boolean retry(){return false;}
     public void release(Object image){released.add(image);done.countDown();}public void failed(RuntimeException e){}
    };
    BlurPipeline pipe=new BlurPipeline(host);
    ok(pipe.execute(()->{BlurPipeline.source(source);BlurPipeline.retain(scaled);BlurPipeline.blurred(blur);if(error)throw new TestError();throw new IllegalStateException("old image recycle failed");}));
    ok(done.await(5,TimeUnit.SECONDS));ok(released.size()==2 && released.contains(scaled)&&released.contains(blur)&&!released.contains(source));pipe.close();
   }
   ok(severe.await(5,TimeUnit.SECONDS));
   System.out.println("PASS "+checks+" assertions; exact production pipeline releases staged final image on RuntimeException and Error, without releasing borrowed source.");
  }finally{Thread.setDefaultUncaughtExceptionHandler(old);}
 }
 static final class TestError extends Error{}
}

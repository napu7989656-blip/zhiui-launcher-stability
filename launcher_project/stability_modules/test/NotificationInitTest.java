import com.byd.launcher.stability.*;
import java.util.*;
public final class NotificationInitTest {
 static final String M="com.byd.launcher/com.byd.launcher.MusicNotificationListener",O="com.other/.Listener",N="com.new/.Listener";
 static int checks;
 static void ok(boolean value){checks++;if(!value)throw new AssertionError();}
 static class Host implements NotificationInit.Host {
  List<String> commands=new ArrayList<>();List<ListenerList> states=new ArrayList<>();int reads;
  boolean alive=true,fail,interrupt;int endAfter=-1,endRead=-1;
  public boolean current(){return alive;}
  public ListenerList read() throws Exception {
   int index=reads++;if(reads==endRead)alive=false;
   return states.get(Math.min(index,states.size()-1));
  }
  void action(String value) throws Exception {
   commands.add(value);if(commands.size()==endAfter)alive=false;
   if(interrupt)throw new InterruptedException();if(fail)throw new Exception("failure");
  }
  public void adb(String value)throws Exception{action(value);}
  public void process(String[] value)throws Exception{action(String.join("|",value));}
 }
 static Host host(String... states){Host h=new Host();for(String s:states)h.states.add(ListenerList.parse(s,s!=null));return h;}
 public static void main(String[] args){
  Host granted=host(M);ok(NotificationInit.ensure(granted,M));ok(granted.commands.isEmpty());
  Host emptyFailure=host("");ok(!NotificationInit.ensure(emptyFailure,M));ok(emptyFailure.commands.size()==4);
  Host unknown=host((String)null);ok(!NotificationInit.ensure(unknown,M));ok(unknown.commands.size()==2);
  ok(unknown.commands.stream().noneMatch(x->x.contains("settings")));
  for(int grantAt=1;grantAt<=4;grantAt++){
   String[] snapshots=new String[grantAt+1];Arrays.fill(snapshots,O);snapshots[grantAt]=O+":"+M;
   Host h=host(snapshots);ok(NotificationInit.ensure(h,M));ok(h.commands.size()==grantAt);
  }
  Host effectDespiteFailure=host(O,O+":"+M);effectDespiteFailure.fail=true;
  ok(NotificationInit.ensure(effectDespiteFailure,M));ok(effectDespiteFailure.commands.size()==1);
  Host failed=host(O);failed.fail=true;ok(!NotificationInit.ensure(failed,M));ok(failed.commands.size()==4);
  Host latest=host(O,O,O,O+":"+N,O+":"+N+":"+M);
  ok(NotificationInit.ensure(latest,M));
  ok(latest.commands.get(2).endsWith("'"+O+":"+M+"'"));
  ok(latest.commands.get(3).endsWith(O+":"+N+":"+M));
  Host unknownAfterWrite=host(O,O,O,null);ok(!NotificationInit.ensure(unknownAfterWrite,M));ok(unknownAfterWrite.commands.size()==3);
  for(int stage=1;stage<=4;stage++){
   Host ended=host(O);ended.endAfter=stage;ok(!NotificationInit.ensure(ended,M));ok(ended.commands.size()==stage);
  }
  for(int stage=1;stage<=5;stage++){
   Host ended=host(O);ended.endRead=stage;ok(!NotificationInit.ensure(ended,M));ok(ended.commands.size()==stage-1);
  }
  Host interrupted=host(O);interrupted.interrupt=true;ok(!NotificationInit.ensure(interrupted,M));
  ok(Thread.currentThread().isInterrupted());ok(interrupted.commands.size()==1);Thread.interrupted();
  Host pre=host(O);Thread.currentThread().interrupt();ok(!NotificationInit.ensure(pre,M));ok(pre.reads==0 && pre.commands.isEmpty());Thread.interrupted();
  Host invalid=host(O);ok(!NotificationInit.ensure(invalid,"bad;command"));ok(invalid.reads==0 && invalid.commands.isEmpty());
  Host dollar=host("com.other/com.other.Outer$Inner");ok(!NotificationInit.ensure(dollar,M));
  ok(dollar.commands.get(2).contains("'com.other/com.other.Outer$Inner:"));
  System.out.println("PASS "+checks+" verified-initialization assertions");
 }
}

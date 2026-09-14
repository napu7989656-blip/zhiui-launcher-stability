import com.byd.launcher.stability.ListenerList;
public final class ListenerListTest {
 static int checks;
 static void ok(boolean b) { checks++;if(!b)throw new AssertionError(); }
 public static void main(String[] args) {
  String mine="com.byd.launcher/com.byd.launcher.MusicNotificationListener";
  for(String empty:new String[]{null,"","null","  null  "}) {
   ListenerList known=ListenerList.parse(empty,true);ok(known.known);ok(mine.equals(known.adding(mine)));
   ListenerList unknown=ListenerList.parse(empty,false);ok(!unknown.known);ok(unknown.adding(mine)==null);
  }
  String other="com.music/.Listener";
  ListenerList list=ListenerList.parse(other,true);ok(list.known);ok(!list.contains(mine));
  ok((other+":"+mine).equals(list.adding(mine)));
  ok(list.contains("com.music/com.music.Listener"));
  ok(other.equals(list.adding("com.music/com.music.Listener")));
  String relative="com.byd.launcher/.MusicNotificationListener";
  ListenerList already=ListenerList.parse(other+":"+relative,true);
  ok(already.contains(mine));ok((other+":"+relative).equals(already.adding(mine)));
  ListenerList similar=ListenerList.parse(mine+"Extra",true);
  ok(similar.known && !similar.contains(mine));ok((mine+"Extra:"+mine).equals(similar.adding(mine)));
  String duplicates=other+":"+other;
  ok((duplicates+":"+mine).equals(ListenerList.parse(duplicates,true).adding(mine)));
  for(String bad:new String[]{"Permission denied","HULU_ERROR","bad",":",other+":",other+"::"+mine,"bad/pkg/name","pkg/.x y","pkg/.x\nerror"}) {
   ListenerList invalid=ListenerList.parse(bad,true);ok(!invalid.known);ok(invalid.adding(mine)==null);
  }
  ok(ListenerList.parse(other,true).adding("bad")==null);
  StringBuilder huge=new StringBuilder();for(int i=0;i<8193;i++)huge.append('x');
  ok(!ListenerList.parse(huge.toString(),true).known);
  StringBuilder many=new StringBuilder(other);for(int i=0;i<256;i++)many.append(':').append(other);
  ok(!ListenerList.parse(many.toString(),true).known);
  System.out.println("PASS "+checks+" listener snapshot assertions");
 }
}

import com.byd.launcher.stability.PolicyControlReadOnly;
import android.view.View;
import android.widget.*;
import java.nio.file.*;
import java.nio.charset.StandardCharsets;

public final class PolicyControlReadOnlyTest {
    static void check(boolean ok,String message) {if(!ok)throw new AssertionError(message);}
    static void commands() {
        for(String command:new String[]{"settings put global policy_control immersive.status=com.byd.launcher", "settings put global policy_control null", "settings delete global policy_control", " settings\tput   global policy_control x", "/system/bin/settings --user 0 put global policy_control x", "settings --user current delete global policy_control"})
            check(PolicyControlReadOnly.isWrite(command),"missed existing/supported write");
        for(String command:new String[]{null,"","settings get global policy_control","settings list global","settings put secure policy_control x","settings put global policy_control_backup x","settings put global other_key policy_control","input keyevent 3","ime enable example/.Ime","echo policy_control","settings --user","settings --user 0","settings --user 0 get global policy_control"})
            check(!PolicyControlReadOnly.isWrite(command),"altered a non-policy-write command");
    }
    static void configuration(String value,boolean denied) {
        View root=new View();root.context.resolver.value=value;root.context.resolver.denied=denied;
        CompoundButton status=new CompoundButton(),nav=new CompoundButton();status.checked=true;nav.checked=false;
        CompoundButton.OnCheckedChangeListener forbidden=new CompoundButton.OnCheckedChangeListener(){public void onCheckedChanged(CompoundButton v,boolean c){throw new AssertionError("listener fired");}};
        status.listener=forbidden;nav.listener=forbidden;
        TextView statusLabel=new TextView(),navLabel=new TextView();
        root.children.put(0x7f08026f,status);root.children.put(0x7f08026d,nav);
        root.children.put(0x7f0802df,statusLabel);root.children.put(0x7f0802de,navLabel);
        PolicyControlReadOnly.configure(root);
        check(!status.enabled&&!nav.enabled&&status.listener==null&&nav.listener==null,"controls not locked");
        check(status.checked&&!nav.checked,"saved checkbox state changed");
        check(statusLabel.text.toString().equals(PolicyControlReadOnly.describe(value,!denied)),"wrong residual status");
        check(navLabel.text.toString().contains("只读"),"nav label misleading");
        check(root.context.resolver.reads==1,"read count unexpected");
        PolicyControlReadOnly.configure(root);check(status.checked&&!nav.checked,"repeat open changed state");
    }
    public static void main(String[] args) throws Exception {
        commands();
        for(String value:new String[]{null,"","null","immersive.status=com.byd.launcher","immersive.full=*"})configuration(value,false);
        configuration(null,true);
        PolicyControlReadOnly.configure(null);PolicyControlReadOnly.configure(new View());
        View wrong=new View();wrong.children.put(0x7f08026f,new View());PolicyControlReadOnly.configure(wrong);
        check(!PolicyControlReadOnly.describe(null,false).equals(PolicyControlReadOnly.describe(null,true)),"unreadable confused with absent");
        check(PolicyControlReadOnly.describe(new String(new char[10000]).replace('\0','x'),true).length()<150,"unbounded label");
        // Generated directly from all policy command literals in the actual parent tree.
        for(String command:Files.readAllLines(Paths.get(args[0]),StandardCharsets.UTF_8))
            if(!command.isEmpty())check(PolicyControlReadOnly.isWrite(command),"uncovered actual producer: "+command);
        System.out.println("PASS: all parent policy write literals blocked; read/unrelated commands preserved; UI listeners disabled without changing saved checked state; absent/empty/literal-null/residual/read-denied and repeat/missing/wrong-view cases handled. Actual Java, isolated Android doubles; no shell/device actions.");
    }
}

package com.byd.launcher.stability;
import java.io.*;
import java.nio.charset.StandardCharsets;

public final class InitProcessTest {
    static int assertions;
    static void ok(boolean value) { assertions++; if (!value) throw new AssertionError(); }
    static final class Clock implements InitProcess.Clock {
        long now; boolean interrupt; Runnable step;
        public long nanoTime() { return now; }
        public void sleep() throws InterruptedException {
            now += 10000000L;
            if (step != null) step.run();
            if (interrupt) throw new InterruptedException();
        }
    }
    static final class Gate implements InitProcess.Gate {
        boolean current = true;
        public boolean current() { return current; }
    }
    static final class Pipe extends ByteArrayInputStream {
        int closes, reads; boolean fail;
        Pipe(String value) { super(value.getBytes(StandardCharsets.UTF_8)); }
        public int available() { if (fail) throw new IllegalStateException("pipe"); return super.available(); }
        public int read(byte[] b, int o, int n) { reads++; return super.read(b,o,n); }
        public void close() { closes++; }
    }
    static final class Sink extends ByteArrayOutputStream {
        int closes; public void close() { closes++; }
    }
    static final class Child extends Process {
        final Clock clock; final Pipe input; final Pipe error = new Pipe("");
        final Sink output = new Sink(); int destroys; int code; long end;
        boolean failDestroy, failInput;
        Child(Clock c, String text, long finish) { clock=c; input=new Pipe(text); end=finish; }
        public InputStream getInputStream() { if(failInput) throw new IllegalStateException(); return input; }
        public InputStream getErrorStream() { return error; }
        public OutputStream getOutputStream() { return output; }
        public int waitFor() { throw new AssertionError("unbounded wait forbidden"); }
        public int exitValue() { if(clock.now < end) throw new IllegalThreadStateException(); return code; }
        public void destroy() { destroys++; if(failDestroy) throw new IllegalStateException(); }
    }
    static InitProcess.Result run(Child child, Gate gate, int limit) throws Exception {
        return InitProcess.collect(child, 0, 50, limit, gate, child.clock);
    }
    static void cleaned(Child child) {
        ok(child.destroys==1); ok(child.error.closes>0); ok(child.output.closes>0);
        if (!child.failInput) ok(child.input.closes>0);
    }
    public static final class Echo {
        public static void main(String[] args) throws Exception {
            System.out.write("probe-ok".getBytes(StandardCharsets.UTF_8));
        }
    }
    public static void main(String[] args) throws Exception {
        for (String value : new String[]{"", "abc", "中文"}) {
            Child child=new Child(new Clock(),value,0);
            InitProcess.Result result=run(child,new Gate(),64);
            ok(result.successful()); ok(result.output.equals(value)); cleaned(child);
        }
        Child bad=new Child(new Clock(),"denied",0); bad.code=7;
        InitProcess.Result nonzero=run(bad,new Gate(),64);
        ok(nonzero.completed && !nonzero.successful() && nonzero.exitCode==7); cleaned(bad);
        Child stalled=new Child(new Clock(),"",Long.MAX_VALUE);
        InitProcess.Result timeout=run(stalled,new Gate(),64);
        ok(!timeout.completed && !timeout.successful() && timeout.output.isEmpty());
        ok(stalled.input.reads==0 && stalled.clock.now==50000000L); cleaned(stalled);
        Child exact=new Child(new Clock(),"1234",0);ok(run(exact,new Gate(),4).successful());cleaned(exact);
        Child overflow=new Child(new Clock(),"12345",0);
        try { run(overflow,new Gate(),4); throw new AssertionError(); } catch(IOException expected) { ok(true); }
        cleaned(overflow);
        Gate gate=new Gate();Child ended=new Child(new Clock(),"",Long.MAX_VALUE);
        ended.clock.step=()->gate.current=false;
        try { run(ended,gate,64);throw new AssertionError(); } catch(IOException expected) { ok(true); }
        cleaned(ended);
        Child interrupted=new Child(new Clock(),"",Long.MAX_VALUE);interrupted.clock.interrupt=true;
        try { run(interrupted,new Gate(),64);throw new AssertionError(); }
        catch(InterruptedException expected) { ok(Thread.currentThread().isInterrupted()); }
        finally { Thread.interrupted(); } cleaned(interrupted);
        Child pre=new Child(new Clock(),"should not read",0);Thread.currentThread().interrupt();
        try { run(pre,new Gate(),64);throw new AssertionError(); }
        catch(InterruptedException expected) { ok(Thread.currentThread().isInterrupted());ok(pre.input.reads==0); }
        finally { Thread.interrupted(); } cleaned(pre);
        Child broken=new Child(new Clock(),"",0);broken.input.fail=true;broken.failDestroy=true;
        try { run(broken,new Gate(),64);throw new AssertionError(); }
        catch(IllegalStateException expected) { ok("pipe".equals(expected.getMessage())); } cleaned(broken);
        Child noInput=new Child(new Clock(),"",0);noInput.failInput=true;
        try { run(noInput,new Gate(),64);throw new AssertionError(); }
        catch(IllegalStateException expected) { ok(true); } cleaned(noInput);
        Gate stopped=new Gate();stopped.current=false;
        try { InitProcess.run(new String[]{"must-not-start"},50,64,stopped);throw new AssertionError(); }
        catch(IOException expected) { ok(expected.getMessage().contains("owner")); }
        InitProcess.Result real=InitProcess.run(new String[]{args[0],"-cp",args[1],Echo.class.getName()},5000,64,new Gate());
        ok(real.successful() && "probe-ok".equals(real.output));
        System.out.println("PASS "+assertions+" assertions, including real JVM child process");
    }
}

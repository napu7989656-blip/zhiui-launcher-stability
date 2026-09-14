package com.byd.launcher.stability;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/** Small synchronous process probe used only by launcher initialization.
 * Does not make an already issued command reversible. Process creation and
 * platform stream implementations remain external latency boundaries.
 */
public final class InitProcess {
    public interface Gate { boolean current(); }
    interface Clock { long nanoTime(); void sleep() throws InterruptedException; }
    private static final Clock SYSTEM = new Clock() {
        public long nanoTime() { return System.nanoTime(); }
        public void sleep() throws InterruptedException { Thread.sleep(10L); }
    };
    public static final class Result {
        public final boolean completed;
        public final int exitCode;
        public final String output;
        private Result(boolean done, int code, String text) {
            completed = done; exitCode = code; output = text;
        }
        public boolean successful() { return completed && exitCode == 0; }
    }
    private InitProcess() {}
    private static void check(Gate gate) throws IOException, InterruptedException {
        if (Thread.currentThread().isInterrupted()) throw new InterruptedException();
        if (!gate.current()) throw new IOException("Initialization owner ended");
    }
    public static Result run(String[] command, int timeoutMillis, int outputLimit, Gate gate)
            throws IOException, InterruptedException {
        if (command == null || command.length == 0 || timeoutMillis <= 0
                || timeoutMillis > 30000 || outputLimit <= 0 || outputLimit > 65536
                || gate == null) throw new IllegalArgumentException();
        check(gate);
        long start = SYSTEM.nanoTime();
        Process process = new ProcessBuilder(command).redirectErrorStream(true).start();
        return collect(process, start, timeoutMillis, outputLimit, gate, SYSTEM);
    }
    static Result collect(Process process, long start, int timeoutMillis, int limit,
                          Gate gate, Clock clock) throws IOException, InterruptedException {
        InputStream input = null;
        try {
            // No input is expected; releasing stdin prevents a child waiting for it.
            close(process.getOutputStream());
            input = process.getInputStream();
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            byte[] buffer = new byte[Math.min(limit, 1024)];
            for (;;) {
                check(gate);
                if (clock.nanoTime() - start >= timeoutMillis * 1000000L)
                    return new Result(false, -1, "");
                // available() is a count of bytes readable without blocking.
                // Never call readLine() or read until EOF on a running process.
                int ready = input.available();
                if (ready > 0) {
                    int count = input.read(buffer, 0, Math.min(ready, buffer.length));
                    if (count > 0) {
                        if (count > limit - bytes.size()) throw new IOException("Process output limit");
                        bytes.write(buffer, 0, count);
                        continue;
                    }
                }
                try {
                    int exit = process.exitValue();
                    check(gate);
                    // Drain bytes delivered before process exit before publishing.
                    if (input.available() > 0) continue;
                    return new Result(true, exit,
                            new String(bytes.toByteArray(), StandardCharsets.UTF_8));
                } catch (IllegalThreadStateException running) {
                    clock.sleep();
                }
            }
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw interrupted;
        } finally {
            // Destroy before closing pipes so cleanup does not wait on a live child.
            try { process.destroy(); } catch (RuntimeException ignored) {}
            close(input);
            try { close(process.getInputStream()); } catch (RuntimeException ignored) {}
            try { close(process.getErrorStream()); } catch (RuntimeException ignored) {}
            try { close(process.getOutputStream()); } catch (RuntimeException ignored) {}
        }
    }
    private static void close(Closeable value) {
        if (value != null) try { value.close(); } catch (IOException | RuntimeException ignored) {}
    }
}

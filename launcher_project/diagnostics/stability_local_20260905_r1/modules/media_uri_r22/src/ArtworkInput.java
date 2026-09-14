package com.byd.launcher.stability;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;

/** Bounded encoded-image IO. No cache, executor, UI or bitmap ownership. */
public final class ArtworkInput {
    public static final int MAX_BYTES = 4 * 1024 * 1024;
    public static final long MAX_MILLIS = 6000;
    public interface Gate { boolean current(); }
    public interface Clock { long millis(); }
    public interface Connections { HttpURLConnection open(URL url) throws IOException; }
    public static final class Budget {
        private final Clock clock;
        private final Gate gate;
        private final long start;
        public Budget(Clock clock, Gate gate) {
            this.clock=clock; this.gate=gate; start=clock.millis();
        }
        public int remaining() throws IOException {
            long left=MAX_MILLIS-(clock.millis()-start);
            if(Thread.currentThread().isInterrupted() || !gate.current() || left<=0)
                throw new InterruptedIOException("Artwork request expired");
            return (int)Math.min(2000L,left);
        }
    }
    public static byte[] read(InputStream stream, Budget budget, HttpURLConnection connection) throws IOException {
        if(stream==null) throw new IOException("Missing artwork stream");
        // Caller owns stream before entry; its finally closes even on allocation failure.
        ByteArrayOutputStream output=new ByteArrayOutputStream(8192);
        byte[] buffer=new byte[8192];
        int zeros=0;
        while(true) {
            int timeout=budget.remaining();
            if(connection!=null) connection.setReadTimeout(timeout);
            // Read at most one byte beyond the cap; never allocate an oversized response.
            int n=stream.read(buffer,0,Math.min(buffer.length,MAX_BYTES-output.size()+1));
            budget.remaining();
            if(n<0) return output.toByteArray();
            if(n==0) { if(++zeros>8) throw new IOException("Artwork stream made no progress"); continue; }
            zeros=0;
            if(n>MAX_BYTES-output.size()) throw new IOException("Artwork response too large");
            output.write(buffer,0,n);
        }
    }
    public static byte[] http(URL url, Budget budget, Connections factory) throws IOException {
        for(int redirects=0;redirects<=3;redirects++) {
            budget.remaining();
            if(!"http".equalsIgnoreCase(url.getProtocol()) && !"https".equalsIgnoreCase(url.getProtocol()))
                throw new IOException("Unsupported artwork redirect");
            HttpURLConnection connection=factory.open(url);
            InputStream stream=null;
            try {
                connection.setInstanceFollowRedirects(false);
                connection.setUseCaches(false);
                connection.setConnectTimeout(budget.remaining());
                connection.setReadTimeout(budget.remaining());
                connection.connect();
                connection.setReadTimeout(budget.remaining());
                int code=connection.getResponseCode();
                budget.remaining();
                if(code==301 || code==302 || code==303 || code==307 || code==308) {
                    String location=connection.getHeaderField("Location");
                    if(location==null || redirects==3) throw new IOException("Artwork redirect limit");
                    url=new URL(url,location);
                    continue;
                }
                if(code<200 || code>=300) throw new IOException("Artwork HTTP status");
                if(connection.getContentLengthLong()>MAX_BYTES) throw new IOException("Artwork response too large");
                connection.setReadTimeout(budget.remaining());
                stream=connection.getInputStream();
                return read(stream,budget,connection);
            } finally {
                // A failing close must not skip disconnect or mask the primary failure.
                try { close(stream); } finally { disconnect(connection); }
            }
        }
        throw new IOException("Artwork redirect limit");
    }
    public static void close(InputStream stream) {
        if(stream!=null) try { stream.close(); } catch(Throwable ignored) { }
    }
    private static void disconnect(HttpURLConnection connection) {
        try { connection.disconnect(); } catch(Throwable ignored) { }
    }
    /** Ceil division matches decoder rounding; rejects extreme source dimensions. */
    public static int sample(int width,int height) throws IOException {
        if(width<=0 || height<=0 || width>32768 || height>32768 || (long)width*height>64000000L)
            throw new IOException("Artwork dimensions rejected");
        int sample=1;
        while((width+sample-1)/sample>1024 || (height+sample-1)/sample>1024) sample*=2;
        return sample;
    }
    private ArtworkInput() { }
}

package com.byd.launcher.stability;

/** Coordinates all artwork sources after metadata acceptance. Android metadata
 * extraction and bitmap IO belong to the bridge. Input is an immutable snapshot;
 * a worker must never consult a live MediaController for replacement metadata.
 * All update/invalidate/close calls and UI delivery run on the main thread.
 */
public final class MediaArtworkPipeline {
    public interface Host extends MediaArtworkWork.Host {
        boolean small(Object bitmap);
        Object cached();
        Object load(String uri);
        Object scale(Object bitmap);
        void pause(long millis) throws InterruptedException;
        void commit(Object bitmap, String title, String artist, boolean replaceCache);
    }
    public static final class Input {
        public final Object bitmap;
        public final String uri;
        public final Object fallbackBitmap;
        public final String fallbackUri;
        public Input(Object bitmap, String uri, Object fallbackBitmap, String fallbackUri) {
            this.bitmap=bitmap; this.uri=nonempty(uri);
            this.fallbackBitmap=fallbackBitmap; this.fallbackUri=nonempty(fallbackUri);
        }
        private static String nonempty(String value) { return value==null || value.length()==0 ? null : value; }
    }
    private final Host host;
    private final MediaArtworkWork work;
    public MediaArtworkPipeline(Host host) {
        if(host==null) throw new NullPointerException("host");
        this.host=host;this.work=new MediaArtworkWork(host);
    }
    public void invalidate() { work.invalidate(); }
    public void close() { work.close(); }
    private void failed(RuntimeException error) {
        try { host.failed(error); } catch(RuntimeException ignored) { }
    }
    public void update(Object session, Input input, String title, String artist) {
        MediaArtworkWork.Request request=work.begin(session);
        if(request==null) return;
        final String text=title==null ? "" : title;
        final String author=artist==null ? "" : artist;
        final Input snapshot=input==null ? new Input(null,null,null,null) : input;
        try {
            if(snapshot.bitmap!=null && host.small(snapshot.bitmap)) {
                request.post(result(snapshot.bitmap,text,author,true));return;
            }
            request.post(result(host.cached(),text,author,false));
            request.execute(new Runnable() {
                public void run() {
                    if(!valid(request)) return;
                    Object bitmap=snapshot.bitmap;
                    if(bitmap==null) bitmap=read(request,snapshot);
                    if(bitmap==null && snapshot.uri!=null && valid(request)) {
                        try { host.pause(150L); }
                        catch(InterruptedException interrupted) { Thread.currentThread().interrupt();return; }
                        if(!valid(request)) return;
                        bitmap=read(request,snapshot);
                    }
                    if(bitmap==null || !valid(request)) return;
                    Object scaled=host.scale(bitmap);
                    if(scaled!=null) request.post(result(scaled,text,author,true));
                }
            });
        } catch(RuntimeException error) { failed(error); }
    }
    private boolean valid(MediaArtworkWork.Request request) {
        return !Thread.currentThread().isInterrupted() && request.current();
    }
    private Object read(MediaArtworkWork.Request request, Input snapshot) {
        Object bitmap=null;
        if(snapshot.uri!=null && valid(request)) bitmap=host.load(snapshot.uri);
        if(!valid(request)) return null;
        if(bitmap!=null) return bitmap;
        if(snapshot.fallbackBitmap!=null) return snapshot.fallbackBitmap;
        if(snapshot.fallbackUri!=null && valid(request)) bitmap=host.load(snapshot.fallbackUri);
        return bitmap;
    }
    private MediaArtworkWork.Result result(Object bitmap,String title,String artist,boolean replaceCache) {
        return new MediaArtworkWork.Result() {
            public void deliver() { host.commit(bitmap,title,artist,replaceCache); }
            // Inputs and scaled outputs may alias metadata/cache-owned images.
            // Release references through the scheduling envelope, never recycle
            // an image here without provenance from a future owning bridge.
            public void discard() { }
        };
    }
}

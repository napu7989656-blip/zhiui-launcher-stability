.class public interface abstract Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;
.super Ljava/lang/Object;
.source "MediaArtworkPipeline.java"

# interfaces
.implements Lcom/byd/launcher/stability/MediaArtworkWork$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/MediaArtworkPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract cached()Ljava/lang/Object;
.end method

.method public abstract commit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;
.end method

.method public abstract pause(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract scale(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract small(Ljava/lang/Object;)Z
.end method

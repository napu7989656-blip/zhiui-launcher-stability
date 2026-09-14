.class public final Lcom/byd/launcher/stability/MediaManagerStart;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final owner:Lo/a9;
.method public constructor <init>(Lo/a9;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaManagerStart;->owner:Lo/a9;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaManagerStart;->owner:Lo/a9;
    invoke-virtual {v0}, Lo/a9;->stabilityStart()V
    return-void
.end method

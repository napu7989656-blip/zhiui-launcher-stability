.class public final Lo/gb;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/gb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lo/gb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-wide v1, v0, Lcom/byd/launcher/NavBarService;->ϭ:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    return-void

    :cond_1
    iput-wide p1, v0, Lcom/byd/launcher/NavBarService;->ϭ:J

    iget-object p1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance p2, Lo/td;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

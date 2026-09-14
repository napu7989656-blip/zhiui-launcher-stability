.class public final Lo/kb;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic ˏ:I


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/kb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "NavBarSvc"

    const-string p2, "SCREEN_ON received, checking service health"

    invoke-static {p1, p2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/kb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance p2, Lo/td;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

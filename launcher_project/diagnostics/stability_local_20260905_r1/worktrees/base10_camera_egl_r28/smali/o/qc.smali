.class public final synthetic Lo/qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic ˋ:Lo/nd;


# direct methods
.method public synthetic constructor <init>(Lo/nd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/qc;->ˋ:Lo/nd;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/qc;->ˋ:Lo/nd;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "PiPManager"

    .line 7
    .line 8
    const-string v2, "Touch binder service died, will reconnect on next show"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lo/nd;->Ο:Landroid/os/IBinder;

    .line 15
    .line 16
    return-void
.end method

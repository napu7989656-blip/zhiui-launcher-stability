.class public final Lo/h7;
.super Lo/kh;
.source "SourceFile"


# instance fields
.field public final Ͳ:Lo/z0;


# direct methods
.method public constructor <init>(Lo/k1;Lo/u4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/kh;-><init>(Lo/k1;Z)V

    invoke-static {p0, p0, p2}, Lo/a2;->ʹ(Ljava/lang/Object;Lo/z0;Lo/u4;)Lo/z0;

    move-result-object p1

    iput-object p1, p0, Lo/h7;->Ͳ:Lo/z0;

    return-void
.end method


# virtual methods
.method public final Λ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/h7;->Ͳ:Lo/z0;

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lo/ui;->ˋ:Lo/ui;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Lo/a2;->Α(Lo/z0;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lo/ͽ;->resumeWith(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

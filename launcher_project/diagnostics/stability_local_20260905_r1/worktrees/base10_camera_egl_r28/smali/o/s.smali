.class public final synthetic Lo/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Lo/u;

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:F


# direct methods
.method public synthetic constructor <init>(Lo/u;IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/s;->Ͱ:Lo/u;

    iput p2, p0, Lo/s;->ͱ:I

    iput p3, p0, Lo/s;->Ͳ:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v1, p0, Lo/s;->ͱ:I

    .line 2
    .line 3
    iget v3, p0, Lo/s;->Ͳ:F

    .line 4
    .line 5
    iget-object v0, p0, Lo/s;->Ͱ:Lo/u;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, v0, Lo/u;->ˋ:Landroid/media/SoundPool;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    move v2, v3

    .line 17
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-void
.end method

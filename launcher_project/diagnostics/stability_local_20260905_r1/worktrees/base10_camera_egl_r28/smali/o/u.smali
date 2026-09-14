.class public final Lo/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ͷ:Lo/u;


# instance fields
.field public ʹ:Landroid/os/HandlerThread;

.field public ˋ:Landroid/media/SoundPool;

.field public ˏ:I

.field public Ͱ:Z

.field public ͱ:Z

.field public Ͳ:F

.field public ͳ:Landroid/os/Handler;

.field public Ͷ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo/u;->ˏ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/u;->Ͱ:Z

    iput-boolean v0, p0, Lo/u;->ͱ:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lo/u;->Ͳ:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/u;->Ͷ:J

    return-void
.end method

.method public static declared-synchronized ˋ()Lo/u;
    .locals 2

    .line 1
    const-class v0, Lo/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/u;->ͷ:Lo/u;

    if-nez v1, :cond_0

    new-instance v1, Lo/u;

    invoke-direct {v1}, Lo/u;-><init>()V

    sput-object v1, Lo/u;->ͷ:Lo/u;

    :cond_0
    sget-object v1, Lo/u;->ͷ:Lo/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public attachToViewTree(Landroid/view/View;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lo/t;

    invoke-direct {v0, p0}, Lo/t;-><init>(Lo/u;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/u;->attachToViewTree(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˏ()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lo/u;->ͱ:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/u;->Ͱ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/u;->ˋ:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/u;->ͳ:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/u;->Ͷ:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Lo/u;->Ͷ:J

    iget v0, p0, Lo/u;->Ͳ:F

    iget v1, p0, Lo/u;->ˏ:I

    iget-object v2, p0, Lo/u;->ͳ:Landroid/os/Handler;

    new-instance v3, Lo/s;

    invoke-direct {v3, p0, v1, v0}, Lo/s;-><init>(Lo/u;IF)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

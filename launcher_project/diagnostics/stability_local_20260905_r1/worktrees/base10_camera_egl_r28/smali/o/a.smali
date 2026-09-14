.class public final Lo/a;
.super Lo/n0;
.source "SourceFile"


# static fields
.field public static final synthetic Ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _resumed:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lo/a;

    const-string v1, "_resumed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/a;->Ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/z0;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lo/a;->_resumed:I

    return-void
.end method

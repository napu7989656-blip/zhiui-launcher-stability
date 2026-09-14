.class public abstract Lo/e9;
.super Lo/q7;
.source "SourceFile"

# interfaces
.implements Lo/n2;


# static fields
.field public static final synthetic ʹ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic isTaken:I

.field public final ͳ:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lo/e9;

    const-string v1, "isTaken"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/e9;->ʹ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/q7;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/e9;->ͳ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lo/e9;->isTaken:I

    return-void
.end method


# virtual methods
.method public abstract Ό()V
.end method

.method public abstract Ύ()Z
.end method

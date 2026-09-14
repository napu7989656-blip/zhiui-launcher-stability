.class public abstract synthetic Lo/xh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˋ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lo/xh;->ˋ:I

    return-void
.end method

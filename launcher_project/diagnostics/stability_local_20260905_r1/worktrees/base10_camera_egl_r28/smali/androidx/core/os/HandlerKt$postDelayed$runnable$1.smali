.class public final Landroidx/core/os/HandlerKt$postDelayed$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/os/HandlerKt;->postDelayed(Landroid/os/Handler;JLjava/lang/Object;Lo/g4;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lo/g4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g4;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/g4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/g4;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;->$action:Lo/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;->$action:Lo/g4;

    invoke-interface {v0}, Lo/g4;->invoke()Ljava/lang/Object;

    return-void
.end method

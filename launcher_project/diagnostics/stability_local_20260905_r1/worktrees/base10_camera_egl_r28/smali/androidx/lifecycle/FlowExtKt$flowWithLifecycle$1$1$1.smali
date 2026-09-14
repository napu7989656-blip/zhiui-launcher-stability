.class final Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/u3;"
    }
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lo/vd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/vd;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/vd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/vd;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1$1;->$$this$callbackFlow:Lo/vd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/z0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1$1;->$$this$callbackFlow:Lo/vd;

    check-cast v0, Lo/ud;

    invoke-virtual {v0, p1, p2}, Lo/ud;->Ͱ(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lo/t1;->Ͱ:Lo/t1;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

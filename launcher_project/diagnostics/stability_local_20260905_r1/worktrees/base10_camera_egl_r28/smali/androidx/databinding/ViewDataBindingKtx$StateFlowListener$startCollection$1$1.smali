.class final Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;
.super Lo/th;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/th;",
        "Lo/u4;"
    }
.end annotation

.annotation runtime Lo/z1;
    c = "androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1$1"
    f = "ViewDataBindingKtx.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $flow:Lo/t3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/t3;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;


# direct methods
.method public constructor <init>(Lo/t3;Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;Lo/z0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/t3;",
            "Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;",
            "Lo/z0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->$flow:Lo/t3;

    iput-object p2, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-direct {p0, p3}, Lo/th;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lo/z0;)Lo/z0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/z0;",
            ")",
            "Lo/z0;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;

    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->$flow:Lo/t3;

    iget-object v1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-direct {p1, v0, v1, p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;-><init>(Lo/t3;Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;Lo/z0;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo/s1;

    check-cast p2, Lo/z0;

    invoke-virtual {p0, p1, p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->invoke(Lo/s1;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lo/s1;Lo/z0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/s1;",
            "Lo/z0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->create(Ljava/lang/Object;Lo/z0;)Lo/z0;

    move-result-object p1

    check-cast p1, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;

    sget-object p2, Lo/ui;->ˋ:Lo/ui;

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    iget v1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->$flow:Lo/t3;

    new-instance v1, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;

    iget-object v3, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-direct {v1, v3}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;-><init>(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)V

    iput v2, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lo/t3;->ˋ(Lo/u3;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

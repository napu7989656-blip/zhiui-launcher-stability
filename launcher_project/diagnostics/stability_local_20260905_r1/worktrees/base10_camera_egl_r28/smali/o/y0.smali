.class public final synthetic Lo/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/y0;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/y0;->ͱ:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo/y0;->Ͱ:I

    iget-object v1, p0, Lo/y0;->ͱ:Landroidx/core/widget/ContentLoadingProgressBar;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->ˋ(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->ˏ(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->ͱ(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :goto_0
    invoke-static {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->Ͱ(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

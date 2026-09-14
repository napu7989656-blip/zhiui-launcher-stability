.class public final synthetic Landroidx/appcompat/widget/ˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/ˋ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/ˋ;->ͱ:Landroidx/appcompat/widget/TooltipCompatHandler;

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
    iget v0, p0, Landroidx/appcompat/widget/ˋ;->Ͱ:I

    iget-object v1, p0, Landroidx/appcompat/widget/ˋ;->ͱ:Landroidx/appcompat/widget/TooltipCompatHandler;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->ˋ(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

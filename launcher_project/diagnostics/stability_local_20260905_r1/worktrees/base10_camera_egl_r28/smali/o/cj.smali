.class public final synthetic Lo/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/cj;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/cj;->ͱ:Landroid/view/View;

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
    .locals 3

    .line 1
    iget v0, p0, Lo/cj;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/cj;->ͱ:Landroid/view/View;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ˋ(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    const/4 v0, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    invoke-static {v1}, Lcom/google/android/material/datepicker/DateSelector;->ˋ(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

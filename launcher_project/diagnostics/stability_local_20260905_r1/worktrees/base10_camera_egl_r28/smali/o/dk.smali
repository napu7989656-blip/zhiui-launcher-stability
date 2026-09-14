.class public final synthetic Lo/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/dk;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/dk;->ͱ:Landroid/widget/PopupWindow;

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
    iget v0, p0, Lo/dk;->Ͱ:I

    iget-object v1, p0, Lo/dk;->ͱ:Landroid/widget/PopupWindow;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

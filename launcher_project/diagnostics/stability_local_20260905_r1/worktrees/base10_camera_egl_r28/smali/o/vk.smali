.class public final synthetic Lo/vk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/vl;


# direct methods
.method public synthetic constructor <init>(Lo/vl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/vk;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/vk;->ˏ:Lo/vl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget v0, p0, Lo/vk;->ˋ:I

    iget-object v1, p0, Lo/vk;->ˏ:Lo/vl;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lo/vl;->ͷ()V

    return-void

    :goto_0
    invoke-virtual {v1}, Lo/vl;->Ψ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

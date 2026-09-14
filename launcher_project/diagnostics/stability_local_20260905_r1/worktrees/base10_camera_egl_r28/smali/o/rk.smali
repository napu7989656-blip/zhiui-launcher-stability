.class public final synthetic Lo/rk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:[I


# direct methods
.method public synthetic constructor <init>([II)V
    .locals 0

    .line 1
    iput p2, p0, Lo/rk;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/rk;->ˏ:[I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Lo/rk;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/rk;->ˏ:[I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    aput p2, v0, v1

    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    aput p2, v0, v1

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lo/vc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/nd;


# direct methods
.method public synthetic constructor <init>(Lo/nd;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/vc;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/vc;->ˏ:Lo/nd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lo/vc;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/vc;->ˏ:Lo/nd;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p1, v0, Lo/nd;->Υ:Lo/ia;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "fav"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lo/ia;->Ͷ(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :pswitch_1
    iget-object p1, v0, Lo/nd;->Υ:Lo/ia;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string v0, "next"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lo/ia;->Ͷ(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :pswitch_2
    iget-object p1, v0, Lo/nd;->Υ:Lo/ia;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lo/ia;->ˋ()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v1, v0, Lo/nd;->ΐ:Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    sget p1, Lo/hf;->widget_music_btn_pause:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget p1, Lo/hf;->widget_music_btn_play:I

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lo/nd;->Υ:Lo/ia;

    .line 50
    .line 51
    const-string v0, "play"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lo/ia;->Ͷ(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void

    .line 57
    :pswitch_3
    iget-object p1, v0, Lo/nd;->Υ:Lo/ia;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    const-string v0, "prev"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lo/ia;->Ͷ(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void

    .line 67
    :goto_1
    invoke-virtual {v0}, Lo/nd;->Ή()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lo/md;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/hd;

.field public final synthetic Ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lo/hd;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lo/md;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/md;->ͱ:Lo/hd;

    .line 4
    .line 5
    iput-boolean p2, p0, Lo/md;->Ͳ:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo/md;->Ͱ:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lo/md;->Ͳ:Z

    .line 4
    .line 5
    iget-object v2, p0, Lo/md;->ͱ:Lo/hd;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lo/hd;->ˋ:Lo/nd;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lo/nd;->Ό(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object v0, v2, Lo/hd;->ˋ:Lo/nd;

    .line 18
    .line 19
    iget-object v2, v0, Lo/nd;->ΐ:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget v3, Lo/hf;->widget_music_btn_play:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget v3, Lo/hf;->widget_music_btn_pause:I

    .line 29
    .line 30
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, v0, Lo/nd;->ͽ:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

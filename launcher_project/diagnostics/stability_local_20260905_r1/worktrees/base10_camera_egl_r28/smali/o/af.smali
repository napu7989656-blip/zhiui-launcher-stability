.class public final Lo/af;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/af;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/af;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/af;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget p1, p0, Lo/af;->ˋ:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p1, p0, Lo/af;->ˏ:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lo/ff;

    .line 10
    .line 11
    iget-boolean p1, p1, Lo/ff;->ͷ:Z

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lo/af;->ˏ:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lo/ff;

    .line 18
    .line 19
    iget-object p1, p1, Lo/ff;->ͳ:Landroid/view/View;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget v0, Lo/if;->qs_brightness_slider:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/SeekBar;

    .line 31
    .line 32
    iget-object v0, p0, Lo/af;->ˏ:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lo/ff;

    .line 35
    .line 36
    iget-object v0, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 37
    .line 38
    sget v1, Lo/if;->qs_brightness_value:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    iget-object v1, p0, Lo/af;->ˏ:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lo/ff;

    .line 52
    .line 53
    iget-object v1, v1, Lo/ff;->ˋ:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "screen_brightness"

    .line 60
    .line 61
    const/16 v3, 0x80

    .line 62
    .line 63
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lo/ff;->ͱ(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    :cond_2
    :goto_0
    return-void

    .line 84
    :goto_1
    iget-object p1, p0, Lo/af;->ˏ:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lo/nd;

    .line 87
    .line 88
    iget-boolean v0, p1, Lo/nd;->Η:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p1, Lo/nd;->Ͳ:Landroid/view/View;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lo/nd;->ˏ(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

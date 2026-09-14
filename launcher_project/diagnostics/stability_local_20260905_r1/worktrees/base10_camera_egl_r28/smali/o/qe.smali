.class public final Lo/qe;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic ˏ:I


# instance fields
.field public final synthetic ˋ:Lo/ff;


# direct methods
.method public constructor <init>(Lo/ff;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/qe;->ˋ:Lo/ff;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/qe;->ˋ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object p1, p0, Lo/qe;->ˋ:Lo/ff;

    iget-boolean p1, p1, Lo/ff;->ͷ:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/qe;->ˋ:Lo/ff;

    iget-object p2, p1, Lo/ff;->ͳ:Landroid/view/View;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo/ff;->ˋ:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lo/qe;->ˋ:Lo/ff;

    iget-object p2, p2, Lo/ff;->ͳ:Landroid/view/View;

    sget v0, Lo/if;->qs_volume_slider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iget-object v0, p0, Lo/qe;->ˋ:Lo/ff;

    iget-object v0, v0, Lo/ff;->ͳ:Landroid/view/View;

    sget v1, Lo/if;->qs_volume_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lo/qe;->ˋ:Lo/ff;

    iget-object p1, p1, Lo/ff;->ͳ:Landroid/view/View;

    sget p2, Lo/if;->qs_nav_volume_slider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iget-object p2, p0, Lo/qe;->ˋ:Lo/ff;

    iget-object p2, p2, Lo/ff;->ͳ:Landroid/view/View;

    sget v0, Lo/if;->qs_nav_volume_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/Ϋ;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2, p2}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method

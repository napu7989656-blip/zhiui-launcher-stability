.class public final synthetic Lo/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Z

.field public final synthetic Ͱ:Lcom/byd/launcher/NavBarService;

.field public final synthetic ͱ:Z

.field public final synthetic Ͳ:Z

.field public final synthetic ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ga;->Ͱ:Lcom/byd/launcher/NavBarService;

    iput-boolean p2, p0, Lo/ga;->ͱ:Z

    iput-boolean p3, p0, Lo/ga;->Ͳ:Z

    iput-boolean p4, p0, Lo/ga;->ͳ:Z

    iput-boolean p5, p0, Lo/ga;->ʹ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ga;->Ͱ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ζ:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-boolean v4, p0, Lo/ga;->ͱ:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    sget v4, Lo/hf;->statusbar_wifi:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v4, p0, Lo/ga;->Ͳ:Z

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    sget v4, Lo/hf;->statusbar_data_signal_level_4:I

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ζ:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->β:Landroid/widget/ImageView;

    .line 41
    .line 42
    if-eqz v1, :cond_6

    .line 43
    .line 44
    iget-boolean v4, p0, Lo/ga;->ͳ:Z

    .line 45
    .line 46
    if-eqz v4, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->β:Landroid/widget/ImageView;

    .line 52
    .line 53
    iget-boolean v1, p0, Lo/ga;->ʹ:Z

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    sget v1, Lo/hf;->statusbar_bluetooth1:I

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    sget v1, Lo/hf;->statusbar_bluetooth0:I

    .line 61
    .line 62
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_6
    :goto_3
    return-void
.end method

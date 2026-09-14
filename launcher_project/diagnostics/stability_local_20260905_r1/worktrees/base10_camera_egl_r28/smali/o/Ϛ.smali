.class public final synthetic Lo/Ϛ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic ˋ:Lo/Ϟ;

.field public final synthetic ˏ:Lo/Ϡ;

.field public final synthetic Ͱ:I


# direct methods
.method public synthetic constructor <init>(Lo/Ϟ;Lo/Ϡ;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ϛ;->ˋ:Lo/Ϟ;

    iput-object p2, p0, Lo/Ϛ;->ˏ:Lo/Ϡ;

    iput p3, p0, Lo/Ϛ;->Ͱ:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 1
    const-string p1, "\u6062\u590d(\u505c\u6b62\u6295\u5c4f)"

    .line 2
    .line 3
    const-string v0, "\u5378\u8f7d\u5e94\u7528"

    .line 4
    .line 5
    const-string v1, "\u6295\u5c4f\u5230\u4eea\u8868"

    .line 6
    .line 7
    const-string v2, "\u6295\u5c4f\u5230\u4e2d\u63a7"

    .line 8
    .line 9
    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lo/Ϛ;->ˋ:Lo/Ϟ;

    .line 14
    .line 15
    iget-object v0, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const v1, 0x10302d2

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v1, 0x10302d1

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lo/Ϛ;->ˏ:Lo/Ϡ;

    .line 34
    .line 35
    iget-object v3, v1, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lo/ϒ;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    iget v5, p0, Lo/Ϛ;->Ͱ:I

    .line 45
    .line 46
    invoke-direct {v3, v0, v1, v5, v4}, Lo/ϒ;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v1, "\u53d6\u6d88"

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-boolean v0, v0, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const/4 v0, -0x2

    .line 69
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const v0, -0xcccccd

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    const/4 p1, 0x1

    .line 86
    return p1
.end method

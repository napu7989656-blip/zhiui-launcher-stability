.class public final synthetic Lo/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:[Ljava/lang/String;

.field public final synthetic Ͱ:Lo/nd;

.field public final synthetic ͱ:[Z

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:Landroid/widget/LinearLayout;

.field public final synthetic Ͷ:Landroid/widget/ImageView;

.field public final synthetic ͷ:I

.field public final synthetic ͺ:Landroid/widget/TextView;

.field public final synthetic ͻ:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo/nd;[ZILandroid/widget/LinearLayout;[Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/rc;->Ͱ:Lo/nd;

    iput-object p2, p0, Lo/rc;->ͱ:[Z

    iput p3, p0, Lo/rc;->Ͳ:I

    iput-object p4, p0, Lo/rc;->ͳ:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lo/rc;->ʹ:[Ljava/lang/String;

    iput-object p6, p0, Lo/rc;->Ͷ:Landroid/widget/ImageView;

    const/4 p1, -0x1

    iput p1, p0, Lo/rc;->ͷ:I

    iput-object p7, p0, Lo/rc;->ͺ:Landroid/widget/TextView;

    iput-object p8, p0, Lo/rc;->ͻ:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/rc;->Ͱ:Lo/nd;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo/rc;->ͱ:[Z

    .line 7
    .line 8
    iget v2, p0, Lo/rc;->Ͳ:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aput-boolean v3, v1, v2

    .line 12
    .line 13
    iget-object v1, p0, Lo/rc;->ͳ:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object v2, p0, Lo/rc;->ʹ:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v1, v2, v1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lo/nd;->Ͳ(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v4, p0, Lo/rc;->Ͷ:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget v1, p0, Lo/rc;->ͷ:I

    .line 35
    .line 36
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    iget-object v4, p0, Lo/rc;->ͺ:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    const-string v1, "\u5df2\u5f00\u542f"

    .line 50
    .line 51
    iget-object v4, p0, Lo/rc;->ͻ:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    const v1, -0x33000001    # -1.3421772E8f

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    aget-object v1, v2, v1

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    aget-object v2, v2, v4

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lo/nd;->Ά(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

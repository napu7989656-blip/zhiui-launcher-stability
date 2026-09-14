.class public final synthetic Lo/oi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/qi;

.field public final synthetic Ͱ:Landroid/view/View;

.field public final synthetic ͱ:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo/qi;Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/oi;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/oi;->ˏ:Lo/qi;

    .line 4
    .line 5
    iput-object p2, p0, Lo/oi;->Ͱ:Landroid/view/View;

    .line 6
    .line 7
    iput-object p3, p0, Lo/oi;->ͱ:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lo/oi;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/oi;->ͱ:Landroid/widget/TextView;

    .line 4
    .line 5
    const/16 v1, 0x28

    .line 6
    .line 7
    iget-object v2, p0, Lo/oi;->Ͱ:Landroid/view/View;

    .line 8
    .line 9
    iget-object v3, p0, Lo/oi;->ˏ:Lo/qi;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Lo/qi;->ͱ(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sub-int/2addr v4, v1

    .line 31
    const/16 v1, 0xa0

    .line 32
    .line 33
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    mul-int/lit8 v4, v1, 0x4

    .line 38
    .line 39
    div-int/lit8 v4, v4, 0x3

    .line 40
    .line 41
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 42
    .line 43
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Lo/qi;->ͷ(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v3, v4}, Lo/qi;->ͷ(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v0, p1, v1}, Lo/qi;->ͻ(Landroid/widget/TextView;II)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    const/16 v4, 0x320

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Lo/qi;->ͱ(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Lo/qi;->ͱ(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v1, v5

    .line 82
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    mul-int/lit8 v4, v1, 0x4

    .line 87
    .line 88
    div-int/lit8 v4, v4, 0x3

    .line 89
    .line 90
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 91
    .line 92
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Lo/qi;->ͷ(I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {v3, v4}, Lo/qi;->ͷ(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {v0, p1, v1}, Lo/qi;->ͻ(Landroid/widget/TextView;II)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

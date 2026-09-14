.class public final synthetic Lo/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʹ:Landroid/view/View;

.field public final synthetic ˋ:I

.field public final synthetic ˏ:Landroid/widget/TextView;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/widget/TextView;

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;ILandroid/widget/TextView;ILandroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p7, p0, Lo/t9;->ˋ:I

    iput-object p1, p0, Lo/t9;->ˏ:Landroid/widget/TextView;

    iput p2, p0, Lo/t9;->Ͱ:I

    iput-object p3, p0, Lo/t9;->ͱ:Landroid/widget/TextView;

    iput p4, p0, Lo/t9;->Ͳ:I

    iput-object p5, p0, Lo/t9;->ͳ:Landroid/view/View;

    iput-object p6, p0, Lo/t9;->ʹ:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lo/t9;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/t9;->ʹ:Landroid/view/View;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    iget-object v2, p0, Lo/t9;->ͳ:Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget v4, p0, Lo/t9;->Ͳ:I

    .line 11
    .line 12
    iget-object v5, p0, Lo/t9;->ͱ:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    iget v8, p0, Lo/t9;->Ͱ:I

    .line 17
    .line 18
    iget-object v9, p0, Lo/t9;->ˏ:Landroid/widget/TextView;

    .line 19
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    sget-object p1, Lo/vl;->Χ:[Lo/ul;

    .line 25
    .line 26
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 46
    .line 47
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 67
    .line 68
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_0
    sget-object p1, Lo/vl;->Χ:[Lo/ul;

    .line 88
    .line 89
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

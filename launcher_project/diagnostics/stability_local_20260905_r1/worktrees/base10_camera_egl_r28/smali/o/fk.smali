.class public final synthetic Lo/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʹ:I

.field public final synthetic ˋ:[I

.field public final synthetic ˏ:Landroid/view/View;

.field public final synthetic Ͱ:[I

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:[I

.field public final synthetic ͳ:I

.field public final synthetic Ͷ:[I


# direct methods
.method public synthetic constructor <init>([ILandroid/view/View;[II[III[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fk;->ˋ:[I

    iput-object p2, p0, Lo/fk;->ˏ:Landroid/view/View;

    iput-object p3, p0, Lo/fk;->Ͱ:[I

    iput p4, p0, Lo/fk;->ͱ:I

    iput-object p5, p0, Lo/fk;->Ͳ:[I

    iput p6, p0, Lo/fk;->ͳ:I

    iput p7, p0, Lo/fk;->ʹ:I

    iput-object p8, p0, Lo/fk;->Ͷ:[I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    move v0, p1

    .line 3
    :goto_0
    iget-object v1, p0, Lo/fk;->ˋ:[I

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_7

    .line 7
    .line 8
    iget-object v1, p0, Lo/fk;->Ͱ:[I

    .line 9
    .line 10
    aget v1, v1, v0

    .line 11
    .line 12
    iget-object v2, p0, Lo/fk;->ˏ:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v3, p0, Lo/fk;->ͱ:I

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    move v4, p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/16 v4, 0x8

    .line 27
    .line 28
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lo/fk;->Ͳ:[I

    .line 32
    .line 33
    aget v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    if-ne v0, v3, :cond_2

    .line 44
    .line 45
    iget v4, p0, Lo/fk;->ͳ:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget v4, p0, Lo/fk;->ʹ:I

    .line 49
    .line 50
    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-ne v0, v3, :cond_3

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v4, p1

    .line 62
    :goto_3
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v1, p0, Lo/fk;->Ͷ:[I

    .line 66
    .line 67
    aget v1, v1, v0

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    if-ne v0, v3, :cond_5

    .line 76
    .line 77
    move v2, p1

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    const/4 v2, 0x4

    .line 80
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_7
    return-void
.end method

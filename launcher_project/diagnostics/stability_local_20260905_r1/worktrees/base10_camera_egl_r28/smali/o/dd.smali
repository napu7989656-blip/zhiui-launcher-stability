.class public final Lo/dd;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:F

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lo/dd;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/dd;->Ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo/dd;->ˏ:F

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 13

    .line 1
    iget v0, p0, Lo/dd;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget v6, p0, Lo/dd;->ˏ:F

    .line 18
    .line 19
    move-object v1, p2

    .line 20
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget v12, p0, Lo/dd;->ˏ:F

    .line 35
    .line 36
    move-object v7, p2

    .line 37
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_0
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget v5, p0, Lo/dd;->ˏ:F

    .line 52
    .line 53
    move-object v0, p2

    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

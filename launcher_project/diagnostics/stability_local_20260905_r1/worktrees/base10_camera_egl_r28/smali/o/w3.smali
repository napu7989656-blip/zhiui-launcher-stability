.class public final synthetic Lo/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/view/View;

.field public final synthetic Ͳ:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lo/w3;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/w3;->ͱ:Landroid/view/View;

    iput-boolean p2, p0, Lo/w3;->Ͳ:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/view/View;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo/w3;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/w3;->Ͳ:Z

    iput-object p2, p0, Lo/w3;->ͱ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo/w3;->Ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-boolean v0, p0, Lo/w3;->Ͳ:Z

    .line 8
    .line 9
    iget-object v1, p0, Lo/w3;->ͱ:Landroid/view/View;

    .line 10
    .line 11
    sget-object v2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const v0, -0x7f000001

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/high16 v0, -0x80000000

    .line 28
    .line 29
    :goto_0
    invoke-static {v2, v0}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :goto_1
    iget-object v0, p0, Lo/w3;->ͱ:Landroid/view/View;

    .line 40
    .line 41
    iget-boolean v1, p0, Lo/w3;->Ͳ:Z

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->ˋ(Landroid/view/View;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

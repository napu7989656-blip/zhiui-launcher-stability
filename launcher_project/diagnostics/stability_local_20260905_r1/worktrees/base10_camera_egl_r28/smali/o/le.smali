.class public final synthetic Lo/le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/ef;
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;
.implements Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;


# instance fields
.field public final synthetic ˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/le;->ˋ:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->ˏ(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p1

    return-object p1
.end method

.method public final countLength(Landroid/text/Editable;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/textfield/TextInputLayout;->ˏ(Landroid/text/Editable;)I

    move-result p1

    return p1
.end method

.method public final get()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/le;->ˋ:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    return v1

    :pswitch_1
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    return v1

    :pswitch_2
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    return v1

    :goto_0
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

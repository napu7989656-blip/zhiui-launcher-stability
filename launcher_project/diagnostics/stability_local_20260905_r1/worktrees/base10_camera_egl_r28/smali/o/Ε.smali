.class public abstract Lo/Ε;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˋ:[I

.field public static final ˏ:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x8

    new-array v1, v0, [I

    sget v2, Lo/hf;->ac_bar_wind_mode_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lo/hf;->ac_bar_wind_mode_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lo/hf;->ac_bar_wind_mode_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lo/hf;->ac_bar_wind_mode_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lo/hf;->ac_bar_wind_mode_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lo/hf;->ac_bar_wind_mode_5:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lo/hf;->ac_bar_wind_mode_6:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lo/hf;->ac_bar_wind_mode_7:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sput-object v1, Lo/Ε;->ˋ:[I

    new-array v0, v0, [I

    sget v1, Lo/hf;->ac_bar_wind_level_0_off:I

    aput v1, v0, v3

    sget v1, Lo/hf;->ac_bar_wind_level_1_on:I

    aput v1, v0, v4

    sget v1, Lo/hf;->ac_bar_wind_level_2_on:I

    aput v1, v0, v5

    sget v1, Lo/hf;->ac_bar_wind_level_3_on:I

    aput v1, v0, v6

    sget v1, Lo/hf;->ac_bar_wind_level_4_on:I

    aput v1, v0, v7

    sget v1, Lo/hf;->ac_bar_wind_level_5_on:I

    aput v1, v0, v8

    sget v1, Lo/hf;->ac_bar_wind_level_6_on:I

    aput v1, v0, v9

    sget v1, Lo/hf;->ac_bar_wind_level_7_on:I

    aput v1, v0, v10

    sput-object v0, Lo/Ε;->ˏ:[I

    return-void
.end method

.method public static ˋ(Landroid/widget/ImageButton;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    const p1, -0xd6490a

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Lo/ci;->ͱ(Z)I

    move-result p1

    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_1
    return-void
.end method

.class public final synthetic Lo/m8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/google/android/material/color/utilities/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/m8;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/m8;->ˏ:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lo/m8;->ˋ:I

    iget-object v1, p0, Lo/m8;->ˏ:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ϒ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ϧ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Ί(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ϊ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->θ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ϯ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Ϯ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Ξ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Ͷ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ϔ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->i(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Ϣ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_13
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ϭ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ό(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lll(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_17
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Ϋ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_19
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->ͳ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->α(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p1

    return-object p1

    :pswitch_1c
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->Θ(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

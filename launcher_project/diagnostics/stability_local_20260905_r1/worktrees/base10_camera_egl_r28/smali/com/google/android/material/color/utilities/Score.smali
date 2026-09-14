.class public final Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/Score$ScoredComparator;,
        Lcom/google/android/material/color/utilities/Score$ScoredHCT;
    }
.end annotation


# static fields
.field private static final BLUE_500:I = -0xbd7a0c

.field private static final CUTOFF_CHROMA:D = 5.0

.field private static final CUTOFF_EXCITED_PROPORTION:D = 0.01

.field private static final MAX_COLOR_COUNT:I = 0x4

.field private static final TARGET_CHROMA:D = 48.0

.field private static final WEIGHT_CHROMA_ABOVE:D = 0.3

.field private static final WEIGHT_CHROMA_BELOW:D = 0.1

.field private static final WEIGHT_PROPORTION:D = 0.7


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static score(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, -0xbd7a0c

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static score(Ljava/util/Map;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    const v0, -0xbd7a0c

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static score(Ljava/util/Map;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static score(Ljava/util/Map;IIZ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4
    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x168

    new-array v3, v2, [I

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v9, v3, v8

    add-int/2addr v9, v7

    aput v9, v3, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    goto :goto_0

    :cond_0
    new-array v4, v2, [D

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v2, :cond_2

    aget v9, v3, v8

    int-to-double v9, v9

    div-double/2addr v9, v5

    add-int/lit8 v11, v8, -0xe

    :goto_2
    add-int/lit8 v12, v8, 0x10

    if-ge v11, v12, :cond_1

    invoke-static {v11}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v12

    aget-wide v13, v4, v12

    add-double/2addr v13, v9

    aput-wide v13, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v5

    aget-wide v5, v4, v5

    if-eqz p3, :cond_4

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_3

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v5, v8

    if-gtz v8, :cond_4

    goto :goto_3

    :cond_4
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v8

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v5, v8

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v8

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :cond_5
    const-wide v8, 0x3fd3333333333333L    # 0.3

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v12

    sub-double/2addr v12, v10

    mul-double/2addr v12, v8

    add-double/2addr v12, v5

    new-instance v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    invoke-direct {v5, v3, v12, v13}, Lcom/google/android/material/color/utilities/Score$ScoredHCT;-><init>(Lcom/google/android/material/color/utilities/Hct;D)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/google/android/material/color/utilities/Score$ScoredComparator;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/Score$ScoredComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x5a

    :goto_5
    const/16 v4, 0xf

    if-lt v3, v4, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    iget-object v5, v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;->hct:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v5}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v9

    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v8

    int-to-double v10, v3

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    move v6, v7

    :goto_6
    if-nez v6, :cond_a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v0, :cond_7

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_d
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    return-object v0
.end method

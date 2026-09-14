.class public final Lcom/byd/launcher/stability/CameraPreferences;
.super Ljava/lang/Object;
.source "CameraPreferences.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flag(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 17
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static integer(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 12
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

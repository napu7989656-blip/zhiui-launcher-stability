.class public abstract Lcom/byd/launcher/camera/NativeYuvConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "keyvault"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native nv21ToRgb565Rotated([BIIII[SII)V
.end method

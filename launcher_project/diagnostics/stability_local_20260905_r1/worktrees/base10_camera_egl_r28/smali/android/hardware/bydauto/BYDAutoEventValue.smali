.class public Landroid/hardware/bydauto/BYDAutoEventValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVAILD_INT:I = -0x3b9ac9ff

.field public static final INVALID_DOUBLE:D = -9.99999999E8

.field public static final INVALID_FLOAT:F = -1.0E9f


# instance fields
.field public bufferDataValue:[B

.field public doubleValue:D

.field public floatArrayValue:[F

.field public floatValue:F

.field public intArrayValue:[I

.field public intValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3b9ac9ff

    iput v0, p0, Landroid/hardware/bydauto/BYDAutoEventValue;->intValue:I

    const v0, -0x319194d8    # -1.0E9f

    iput v0, p0, Landroid/hardware/bydauto/BYDAutoEventValue;->floatValue:F

    const-wide v0, -0x3e32329b00800000L    # -9.99999999E8

    iput-wide v0, p0, Landroid/hardware/bydauto/BYDAutoEventValue;->doubleValue:D

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/bydauto/BYDAutoEventValue;->intArrayValue:[I

    iput-object v0, p0, Landroid/hardware/bydauto/BYDAutoEventValue;->floatArrayValue:[F

    iput-object v0, p0, Landroid/hardware/bydauto/BYDAutoEventValue;->bufferDataValue:[B

    return-void
.end method

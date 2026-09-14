.class public Landroid/hardware/bydauto/BYDAutoConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYDAUTO_COMMAND_RESULT_BUSY:I = -0x7ffffc17

.field public static final BYDAUTO_COMMAND_RESULT_FAILED:I = -0x7ffffc18

.field public static final BYDAUTO_COMMAND_RESULT_INVALID_VALUE:I = -0x7ffffc15

.field public static final BYDAUTO_COMMAND_RESULT_SUCCESS:I = 0x0

.field public static final BYDAUTO_COMMAND_RESULT_TIMEOUT:I = -0x7ffffc16

.field public static final BYDAUTO_DEVICE_AC:I = 0x3e8

.field public static final BYDAUTO_DEVICE_BODYWORK:I = 0x3e9

.field public static final BYDAUTO_DEVICE_CHARGING:I = 0x3f1

.field public static final BYDAUTO_DEVICE_DOOR_LOCK:I = 0x411

.field public static final BYDAUTO_DEVICE_ENERGY:I = 0x3ee

.field public static final BYDAUTO_DEVICE_ENGINE:I = 0x3f4

.field public static final BYDAUTO_DEVICE_GEARBOX:I = 0x3f3

.field public static final BYDAUTO_DEVICE_INSTRUMENT:I = 0x3ef

.field public static final BYDAUTO_DEVICE_LIGHT:I = 0x3ec

.field public static final BYDAUTO_DEVICE_LOCATION:I = 0x3f9

.field public static final BYDAUTO_DEVICE_PANORAMA:I = 0x407

.field public static final BYDAUTO_DEVICE_PM2P5:I = 0x3f0

.field public static final BYDAUTO_DEVICE_RADAR:I = 0x401

.field public static final BYDAUTO_DEVICE_SAFETY_BELT:I = 0x412

.field public static final BYDAUTO_DEVICE_SENSOR:I = 0x413

.field public static final BYDAUTO_DEVICE_SETTING:I = 0x3ff

.field public static final BYDAUTO_DEVICE_SPEED:I = 0x3f5

.field public static final BYDAUTO_DEVICE_STATISTIC:I = 0x3f6

.field public static final BYDAUTO_DEVICE_TIME:I = 0x400

.field public static final BYDAUTO_DEVICE_TYRE:I = 0x3f8

.field public static final UNKNOWN_ERROR:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

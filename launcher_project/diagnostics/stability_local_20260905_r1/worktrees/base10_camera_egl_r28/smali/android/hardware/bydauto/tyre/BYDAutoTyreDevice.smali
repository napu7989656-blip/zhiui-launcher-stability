.class public Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;
.super Landroid/hardware/bydauto/AbsBYDAutoDevice;
.source "SourceFile"


# static fields
.field public static final TYRE_AIR_LEAK_STATE_NORMAL:I = 0x0

.field public static final TYRE_AIR_LEAK_STATE_QUICK:I = 0x1

.field public static final TYRE_AIR_LEAK_STATE_SLOW:I = 0x2

.field public static final TYRE_BATTERY_STATE_LOW:I = 0x1

.field public static final TYRE_BATTERY_STATE_NORMAL:I = 0x0

.field public static final TYRE_COMMAND_AREA_LEFT_FRONT:I = 0x1

.field public static final TYRE_COMMAND_AREA_LEFT_REAR:I = 0x3

.field public static final TYRE_COMMAND_AREA_RIGHT_FRONT:I = 0x2

.field public static final TYRE_COMMAND_AREA_RIGHT_REAR:I = 0x4

.field public static final TYRE_COMMAND_BUSY:I = -0x7ffffc17

.field public static final TYRE_COMMAND_FAILED:I = -0x7ffffc18

.field public static final TYRE_COMMAND_INVALID_VALUE:I = -0x7ffffc15

.field public static final TYRE_COMMAND_SUCCESS:I = 0x0

.field public static final TYRE_COMMAND_TIMEOUT:I = -0x7ffffc16

.field public static final TYRE_PRESSURE_STATE_NORMAL:I = 0x0

.field public static final TYRE_PRESSURE_STATE_OVERPRESSURE:I = 0x1

.field public static final TYRE_PRESSURE_STATE_UNDERPRESSURE:I = 0x2

.field public static final TYRE_PRESSURE_VALUE_MAX:I = 0xffe

.field public static final TYRE_PRESSURE_VALUE_MIN:I = 0x0

.field public static final TYRE_SIGNAL_STATE_ERROR:I = 0x1

.field public static final TYRE_SIGNAL_STATE_NORMAL:I = 0x0

.field public static final TYRE_SYSTEM_STATE_BREAKDOWN:I = 0x3

.field public static final TYRE_SYSTEM_STATE_MASKED:I = 0x4

.field public static final TYRE_SYSTEM_STATE_NORMAL:I = 0x0

.field public static final TYRE_SYSTEM_STATE_SELF_CHECKING:I = 0x1

.field public static final TYRE_SYSTEM_STATE_SIGNAL_ANOMAL:I = 0x2

.field public static final TYRE_TEMPERATURE_STATE_HIGH:I = 0x2

.field public static final TYRE_TEMPERATURE_STATE_NORMAL:I = 0x0

.field public static final TYRE_TEMPERATURE_STATE_SLEEP:I = 0x3

.field public static final TYRE_TEMPERATURE_STATE_SUPER_HIGH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/bydauto/AbsBYDAutoDevice;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getType()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTyreAirLeakState(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTyreBatteryState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTyrePressureState(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTyrePressureValue(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTyreSignalState(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTyreSystemState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTyreTemperatureState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postEvent(IIILjava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerListener(Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListener(Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

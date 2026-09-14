.class public Landroid/hardware/bydauto/ac/BYDAutoAcDevice;
.super Landroid/hardware/bydauto/AbsBYDAutoDevice;
.source "SourceFile"


# static fields
.field public static final AC_COMMAND_BUSY:I = -0x7ffffc17

.field public static final AC_COMMAND_FAILED:I = -0x7ffffc18

.field public static final AC_COMMAND_INVALID_VALUE:I = -0x7ffffc15

.field public static final AC_COMMAND_SUCCESS:I = 0x0

.field public static final AC_COMMAND_TIMEOUT:I = -0x7ffffc16

.field public static final AC_COMPRESSOR_MANUAL_SIGN_OFF:I = 0x0

.field public static final AC_COMPRESSOR_MANUAL_SIGN_ON:I = 0x1

.field public static final AC_COMPRESSOR_OFF:I = 0x0

.field public static final AC_COMPRESSOR_ON:I = 0x1

.field public static final AC_CTRLMODE_AUTO:I = 0x0

.field public static final AC_CTRLMODE_MANUAL:I = 0x1

.field public static final AC_CTRL_SOURCE_UI_KEY:I = 0x0

.field public static final AC_CTRL_SOURCE_VOICE:I = 0x1

.field public static final AC_CYCLEMODE_INLOOP:I = 0x1

.field public static final AC_CYCLEMODE_OUTLOOP:I = 0x0

.field public static final AC_DEFROST_AREA_FRONT:I = 0x1

.field public static final AC_DEFROST_AREA_REAR:I = 0x2

.field public static final AC_DEFROST_STATE_OFF:I = 0x0

.field public static final AC_DEFROST_STATE_ON:I = 0x1

.field public static final AC_FAULT_NUM_SHOWN_STATE_INVALID:I = 0x0

.field public static final AC_FAULT_NUM_SHOWN_STATE_OFF:I = 0x1

.field public static final AC_FAULT_NUM_SHOWN_STATE_ON:I = 0x2

.field public static final AC_FAULT_NUM_SHOWN_STATE_RESERVED:I = 0x3

.field public static final AC_POWER_OFF:I = 0x0

.field public static final AC_POWER_ON:I = 0x1

.field public static final AC_TEMPCTRL_SEPARATE_OFF:I = 0x0

.field public static final AC_TEMPCTRL_SEPARATE_ON:I = 0x1

.field public static final AC_TEMPERATURE_DEPUTY:I = 0x2

.field public static final AC_TEMPERATURE_MAIN:I = 0x1

.field public static final AC_TEMPERATURE_MAIN_DEPUTY:I = 0x0

.field public static final AC_TEMPERATURE_OUT:I = 0x4

.field public static final AC_TEMPERATURE_REAR:I = 0x3

.field public static final AC_TEMPERATURE_UNIT_OC:I = 0x1

.field public static final AC_TEMPERATURE_UNIT_OF:I = 0x0

.field public static final AC_TEMP_INVALID:I = 0x0

.field public static final AC_TEMP_IN_CELSIUS_MAX:I = 0x21

.field public static final AC_TEMP_IN_CELSIUS_MIN:I = 0x11

.field public static final AC_TEMP_IN_FAHRENHEIT_MAX:I = 0x5b

.field public static final AC_TEMP_IN_FAHRENHEIT_MIN:I = 0x40

.field public static final AC_TEMP_OUT_CELSIUS_MAX:I = 0x32

.field public static final AC_TEMP_OUT_CELSIUS_MIN:I = -0x28

.field public static final AC_TEMP_OUT_FAHRENHEIT_MAX:I = 0x7a

.field public static final AC_TEMP_OUT_FAHRENHEIT_MIN:I = -0x28

.field public static final AC_VENTILATION_STATE_OFF:I = 0x0

.field public static final AC_VENTILATION_STATE_ON:I = 0x1

.field public static final AC_WINDLEVEL_0:I = 0x0

.field public static final AC_WINDLEVEL_1:I = 0x1

.field public static final AC_WINDLEVEL_2:I = 0x2

.field public static final AC_WINDLEVEL_3:I = 0x3

.field public static final AC_WINDLEVEL_4:I = 0x4

.field public static final AC_WINDLEVEL_5:I = 0x5

.field public static final AC_WINDLEVEL_6:I = 0x6

.field public static final AC_WINDLEVEL_7:I = 0x7

.field public static final AC_WINDLEVEL_MANUAL_SIGN_OFF:I = 0x0

.field public static final AC_WINDLEVEL_MANUAL_SIGN_ON:I = 0x1

.field public static final AC_WINDMODE_DEFROST:I = 0x5

.field public static final AC_WINDMODE_FACE:I = 0x1

.field public static final AC_WINDMODE_FACEDEFROST:I = 0x7

.field public static final AC_WINDMODE_FACEFOOT:I = 0x2

.field public static final AC_WINDMODE_FACEFOOTDEFROST:I = 0x6

.field public static final AC_WINDMODE_FOOT:I = 0x3

.field public static final AC_WINDMODE_FOOTDEFROST:I = 0x4

.field public static final AC_WINDMODE_MANUAL_SIGN_OFF:I = 0x0

.field public static final AC_WINDMODE_MANUAL_SIGN_ON:I = 0x1

.field public static final AC_WINDMODE_SHOWN_STATE_OFF:I = 0x0

.field public static final AC_WINDMODE_SHOWN_STATE_ON:I = 0x1


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

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/ac/BYDAutoAcDevice;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAcCompressorManualSign()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcCompressorMode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcControlMode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcCycleMode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcDefrostState(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcStartState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcTemperatureControlMode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcVentilationState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcWindLevel()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcWindLevelManualSign()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcWindMode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcWindModeManualSign()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRearAcStartState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemperatureUnit()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemprature(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType()I
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

.method public registerListener(Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcControlMode(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcCycleMode(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcDefrostState(III)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcTemperature(IIII)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcTemperatureControlMode(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcVentilationState(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcWindLevel(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAcWindMode(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startRearAc(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopRearAc(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListener(Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

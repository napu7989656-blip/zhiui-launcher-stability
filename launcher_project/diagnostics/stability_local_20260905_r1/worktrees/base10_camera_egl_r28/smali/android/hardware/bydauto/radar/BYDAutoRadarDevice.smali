.class public Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;
.super Landroid/hardware/bydauto/AbsBYDAutoDevice;
.source "SourceFile"


# static fields
.field public static final RADAR_AREA_FRONT_LEFT_MID:I = 0x0

.field public static final RADAR_AREA_FRONT_RIGHT_MID:I = 0x1

.field public static final RADAR_AREA_LEFT:I = 0x2

.field public static final RADAR_AREA_LEFT_FRONT:I = 0x4

.field public static final RADAR_AREA_LEFT_REAR:I = 0x5

.field public static final RADAR_AREA_RIGHT:I = 0x3

.field public static final RADAR_AREA_RIGHT_FRONT:I = 0x6

.field public static final RADAR_AREA_RIGHT_REAR:I = 0x7

.field public static final RADAR_PROBE_STATE_ABNORMAL:I = 0x4

.field public static final RADAR_PROBE_STATE_GREEN:I = 0x1

.field public static final RADAR_PROBE_STATE_RED:I = 0x3

.field public static final RADAR_PROBE_STATE_SAFE:I = 0x0

.field public static final RADAR_PROBE_STATE_YELLOW:I = 0x2

.field public static final RADAR_REVERSE_SWITCH_OFF:I = 0x0

.field public static final RADAR_REVERSE_SWITCH_ON:I = 0x1


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

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAllRadarProbeStates()[I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRadarProbeState(I)I
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReverseRadarSwitchState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public registerListener(Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListener(Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

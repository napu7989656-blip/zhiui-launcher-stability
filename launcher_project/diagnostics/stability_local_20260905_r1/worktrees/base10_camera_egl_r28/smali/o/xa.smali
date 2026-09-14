.class public final Lo/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/xa;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p1, p1, v0

    const v0, 0x447d5000    # 1013.25f

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result p1

    float-to-double v0, p1

    iget-object p1, p0, Lo/xa;->ˋ:Lcom/byd/launcher/NavBarService;

    iput-wide v0, p1, Lcom/byd/launcher/NavBarService;->ϡ:D

    :cond_0
    return-void
.end method

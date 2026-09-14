.class public final synthetic Landroidx/core/location/Ͳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/util/concurrent/Executor;

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/core/location/Ͳ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/Ͳ;->Ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/Ͳ;->ͱ:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/core/location/Ͳ;->ͳ:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/location/Ͳ;->Ͱ:I

    iget-object v1, p0, Landroidx/core/location/Ͳ;->ͱ:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/core/location/Ͳ;->ͳ:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/core/location/Ͳ;->Ͳ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    check-cast v2, Landroidx/core/location/GnssStatusCompat;

    invoke-static {v3, v1, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->ˏ(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void

    :pswitch_1
    check-cast v3, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    check-cast v2, Landroid/location/GnssMeasurementsEvent;

    invoke-static {v3, v1, v2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->ˏ(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    return-void

    :goto_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    check-cast v2, Landroid/location/GnssStatus;

    invoke-static {v3, v1, v2}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->ˏ(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

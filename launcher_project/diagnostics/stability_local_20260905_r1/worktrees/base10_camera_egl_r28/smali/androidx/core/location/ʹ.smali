.class public final synthetic Landroidx/core/location/ʹ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/util/concurrent/Executor;

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/core/location/ʹ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/ʹ;->ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/ʹ;->ͱ:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iput p3, p0, Landroidx/core/location/ʹ;->Ͳ:I

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
    iget v0, p0, Landroidx/core/location/ʹ;->Ͱ:I

    iget v1, p0, Landroidx/core/location/ʹ;->Ͳ:I

    iget-object v2, p0, Landroidx/core/location/ʹ;->ͱ:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/core/location/ʹ;->ͳ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-static {v3, v2, v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->ˋ(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :pswitch_1
    check-cast v3, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    invoke-static {v3, v2, v1}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->ˋ(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :goto_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    invoke-static {v3, v2, v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->Ͱ(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Landroidx/core/location/Ά;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

.field public final synthetic Ͳ:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/core/location/Ά;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/Ά;->ͱ:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/Ά;->Ͳ:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/location/Ά;->Ͱ:I

    iget-object v1, p0, Landroidx/core/location/Ά;->Ͳ:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/core/location/Ά;->ͱ:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->ͱ(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->ˋ(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

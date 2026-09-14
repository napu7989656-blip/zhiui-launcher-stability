.class public final synthetic Landroidx/core/location/ͺ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic Ͳ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/core/location/ͺ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/ͺ;->ͱ:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/ͺ;->Ͳ:Ljava/lang/String;

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
    iget v0, p0, Landroidx/core/location/ͺ;->Ͱ:I

    iget-object v1, p0, Landroidx/core/location/ͺ;->Ͳ:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/location/ͺ;->ͱ:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->ˋ(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->Ͳ(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

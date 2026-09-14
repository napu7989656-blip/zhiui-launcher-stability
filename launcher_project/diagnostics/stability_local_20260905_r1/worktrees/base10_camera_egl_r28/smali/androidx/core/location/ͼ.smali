.class public final synthetic Landroidx/core/location/ͼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/core/location/ͼ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/ͼ;->ͱ:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/ͼ;->Ͳ:Ljava/lang/Object;

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
    iget v0, p0, Landroidx/core/location/ͼ;->Ͱ:I

    iget-object v1, p0, Landroidx/core/location/ͼ;->ͱ:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v2, p0, Landroidx/core/location/ͼ;->Ͳ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->Ͱ(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/util/List;)V

    return-void

    :goto_0
    check-cast v2, Landroid/location/Location;

    invoke-static {v1, v2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->ͳ(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroid/location/Location;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

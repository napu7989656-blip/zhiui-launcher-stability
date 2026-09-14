.class public final synthetic Landroidx/core/location/Ͱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/core/util/Consumer;

.field public final synthetic Ͳ:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/location/Location;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/core/location/Ͱ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/Ͱ;->ͱ:Landroidx/core/util/Consumer;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/Ͱ;->Ͳ:Landroid/location/Location;

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
    iget v0, p0, Landroidx/core/location/Ͱ;->Ͱ:I

    iget-object v1, p0, Landroidx/core/location/Ͱ;->Ͳ:Landroid/location/Location;

    iget-object v2, p0, Landroidx/core/location/Ͱ;->ͱ:Landroidx/core/util/Consumer;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->ˋ(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroidx/core/location/LocationManagerCompat;->ˋ(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

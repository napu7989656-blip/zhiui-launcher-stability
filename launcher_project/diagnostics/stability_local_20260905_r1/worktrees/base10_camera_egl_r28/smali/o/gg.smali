.class public final synthetic Lo/gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/SavedStateHandle;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/gg;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/gg;->ˏ:Landroidx/lifecycle/SavedStateHandle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget v0, p0, Lo/gg;->ˋ:I

    iget-object v1, p0, Lo/gg;->ˏ:Landroidx/lifecycle/SavedStateHandle;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroidx/lifecycle/SavedStateHandle;->ˋ(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :goto_0
    invoke-static {v1}, Landroidx/lifecycle/SavedStateHandle;->ˋ(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

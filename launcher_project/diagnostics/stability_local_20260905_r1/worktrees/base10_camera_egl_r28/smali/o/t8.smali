.class public final synthetic Lo/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic Ͱ:Landroidx/core/view/MenuHostHelper;

.field public final synthetic ͱ:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic Ͳ:Landroidx/core/view/MenuProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/MenuHostHelper;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/MenuProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/t8;->Ͱ:Landroidx/core/view/MenuHostHelper;

    iput-object p2, p0, Lo/t8;->ͱ:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Lo/t8;->Ͳ:Landroidx/core/view/MenuProvider;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/t8;->ͱ:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Lo/t8;->Ͳ:Landroidx/core/view/MenuProvider;

    iget-object v2, p0, Lo/t8;->Ͱ:Landroidx/core/view/MenuHostHelper;

    invoke-static {v2, v0, v1, p1, p2}, Landroidx/core/view/MenuHostHelper;->ˋ(Landroidx/core/view/MenuHostHelper;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

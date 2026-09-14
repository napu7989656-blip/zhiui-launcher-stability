.class public final Landroidx/lifecycle/ViewModelLazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/g7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/lifecycle/ViewModel;",
        ">",
        "Ljava/lang/Object;",
        "Lo/g7;"
    }
.end annotation


# instance fields
.field private cached:Landroidx/lifecycle/ViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field

.field private final extrasProducer:Lo/g4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g4;"
        }
    .end annotation
.end field

.field private final factoryProducer:Lo/g4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g4;"
        }
    .end annotation
.end field

.field private final storeProducer:Lo/g4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g4;"
        }
    .end annotation
.end field

.field private final viewModelClass:Lo/v6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/v6;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/v6;Lo/g4;Lo/g4;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/v6;",
            "Lo/g4;",
            "Lo/g4;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lo/v6;Lo/g4;Lo/g4;Lo/g4;ILo/b2;)V

    return-void
.end method

.method public constructor <init>(Lo/v6;Lo/g4;Lo/g4;Lo/g4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/v6;",
            "Lo/g4;",
            "Lo/g4;",
            "Lo/g4;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasProducer"

    invoke-static {p4, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lo/v6;

    iput-object p2, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Lo/g4;

    iput-object p3, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Lo/g4;

    iput-object p4, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Lo/g4;

    return-void
.end method

.method public synthetic constructor <init>(Lo/v6;Lo/g4;Lo/g4;Lo/g4;ILo/b2;)V
    .locals 0

    .line 3
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Landroidx/lifecycle/ViewModelLazy$1;->INSTANCE:Landroidx/lifecycle/ViewModelLazy$1;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lo/v6;Lo/g4;Lo/g4;Lo/g4;)V

    return-void
.end method


# virtual methods
.method public getValue()Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Lo/g4;

    invoke-interface {v0}, Lo/g4;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    iget-object v1, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Lo/g4;

    invoke-interface {v1}, Lo/g4;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStore;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    iget-object v3, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Lo/g4;

    invoke-interface {v3}, Lo/g4;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-direct {v2, v1, v0, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lo/v6;

    const-string v1, "<this>"

    .line 1
    invoke-static {v0, v1}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/p;

    invoke-interface {v0}, Lo/p;->ˋ()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v0, v1}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

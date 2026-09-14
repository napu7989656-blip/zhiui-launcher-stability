.class final Landroidx/lifecycle/Transformations$distinctUntilChanged$1;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/d7;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $firstTime:Lo/sf;

.field final synthetic $outputLiveData:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lo/sf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData<",
            "TX;>;",
            "Lo/sf;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->$firstTime:Lo/sf;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->$firstTime:Lo/sf;

    iget-boolean v1, v1, Lo/sf;->Ͱ:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->$firstTime:Lo/sf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/sf;->Ͱ:Z

    iget-object v0, p0, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;->$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

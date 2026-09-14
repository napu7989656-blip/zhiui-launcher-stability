.class public final Landroidx/databinding/ViewDataBindingKtx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;
    }
.end annotation


# static fields
.field private static final CREATE_STATE_FLOW_LISTENER:Landroidx/databinding/CreateWeakListener;

.field public static final INSTANCE:Landroidx/databinding/ViewDataBindingKtx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/ViewDataBindingKtx;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBindingKtx;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBindingKtx;->INSTANCE:Landroidx/databinding/ViewDataBindingKtx;

    new-instance v0, Landroidx/databinding/ˋ;

    invoke-direct {v0}, Landroidx/databinding/ˋ;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBindingKtx;->CREATE_STATE_FLOW_LISTENER:Landroidx/databinding/CreateWeakListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final CREATE_STATE_FLOW_LISTENER$lambda$0(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 2

    new-instance v0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    const-string v1, "referenceQueue"

    invoke-static {p2, v1}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->getListener()Landroidx/databinding/WeakListener;

    move-result-object p0

    return-object p0
.end method

.method public static final updateStateFlowRegistration(Landroidx/databinding/ViewDataBinding;ILo/t3;)Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Lo/t3;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string v0, "viewDataBinding"

    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInStateFlowRegisterObserver:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBindingKtx;->CREATE_STATE_FLOW_LISTENER:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInStateFlowRegisterObserver:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInStateFlowRegisterObserver:Z

    throw p1
.end method

.method public static synthetic ˋ(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/databinding/ViewDataBindingKtx;->CREATE_STATE_FLOW_LISTENER$lambda$0(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    move-result-object p0

    return-object p0
.end method

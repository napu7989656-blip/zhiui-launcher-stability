.class public abstract Lcom/byd/launcher/databinding/NavBarBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final btnAcPower:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnAllApps:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnBack:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnCycleMode:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnDefrost:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnDriverTempDown:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnDriverTempUp:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnHome:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnNavApp4:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnNavCamera:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnNavMedia:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnNavSettings:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnWindDown:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnWindMode:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnWindUp:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNavBlurBg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivWindLevel:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutWind:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mAcState:Lo/Ζ;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvDriverTemp:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vNavBlurTint:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnAcPower:Landroid/widget/ImageButton;

    move-object v1, p5

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnAllApps:Landroid/widget/ImageButton;

    move-object v1, p6

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnBack:Landroid/widget/ImageButton;

    move-object v1, p7

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnCycleMode:Landroid/widget/ImageButton;

    move-object v1, p8

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnDefrost:Landroid/widget/ImageButton;

    move-object v1, p9

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnDriverTempDown:Landroid/widget/ImageButton;

    move-object v1, p10

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnDriverTempUp:Landroid/widget/ImageButton;

    move-object v1, p11

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnHome:Landroid/widget/ImageButton;

    move-object v1, p12

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnNavApp4:Landroid/widget/ImageButton;

    move-object v1, p13

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnNavCamera:Landroid/widget/ImageButton;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnNavMedia:Landroid/widget/ImageButton;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnNavSettings:Landroid/widget/ImageButton;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnWindDown:Landroid/widget/ImageButton;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnWindMode:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->btnWindUp:Landroid/widget/ImageButton;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->ivNavBlurBg:Landroid/widget/ImageView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->ivWindLevel:Landroid/widget/ImageView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->layoutWind:Landroid/widget/LinearLayout;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->tvDriverTemp:Landroid/widget/TextView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/byd/launcher/databinding/NavBarBinding;->vNavBlurTint:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/byd/launcher/databinding/NavBarBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byd/launcher/databinding/NavBarBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/byd/launcher/databinding/NavBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/byd/launcher/databinding/NavBarBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lo/jf;->nav_bar:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/byd/launcher/databinding/NavBarBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/byd/launcher/databinding/NavBarBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byd/launcher/databinding/NavBarBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/byd/launcher/databinding/NavBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/byd/launcher/databinding/NavBarBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/byd/launcher/databinding/NavBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/byd/launcher/databinding/NavBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/byd/launcher/databinding/NavBarBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget v0, Lo/jf;->nav_bar:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/byd/launcher/databinding/NavBarBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/byd/launcher/databinding/NavBarBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lo/jf;->nav_bar:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/byd/launcher/databinding/NavBarBinding;

    return-object p0
.end method


# virtual methods
.method public getAcState()Lo/Ζ;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/databinding/NavBarBinding;->mAcState:Lo/Ζ;

    return-object v0
.end method

.method public abstract setAcState(Lo/Ζ;)V
    .param p1    # Lo/Ζ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

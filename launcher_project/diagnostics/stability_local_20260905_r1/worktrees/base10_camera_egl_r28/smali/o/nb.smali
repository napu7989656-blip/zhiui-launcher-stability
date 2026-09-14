.class public final Lo/nb;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/nb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/nb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance p2, Lo/td;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

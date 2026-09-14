.class public final synthetic Lo/pc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic ˋ:Lo/nd;


# direct methods
.method public synthetic constructor <init>(Lo/nd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/pc;->ˋ:Lo/nd;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lo/pc;->ˋ:Lo/nd;

    .line 3
    .line 4
    iput-object p1, v0, Lo/nd;->φ:Landroid/app/AlertDialog;

    .line 5
    .line 6
    return-void
.end method

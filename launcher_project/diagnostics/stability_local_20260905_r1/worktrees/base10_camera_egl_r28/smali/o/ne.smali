.class public final synthetic Lo/ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic ˋ:Lo/ff;

.field public final synthetic ˏ:Landroid/widget/SeekBar;

.field public final synthetic Ͱ:Landroid/widget/TextView;

.field public final synthetic ͱ:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ne;->ˋ:Lo/ff;

    iput-object p2, p0, Lo/ne;->ˏ:Landroid/widget/SeekBar;

    iput-object p3, p0, Lo/ne;->Ͱ:Landroid/widget/TextView;

    iput-object p4, p0, Lo/ne;->ͱ:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ne;->ˋ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object p1, p0, Lo/ne;->ˋ:Lo/ff;

    .line 2
    .line 3
    iget-object p2, p0, Lo/ne;->ˏ:Landroid/widget/SeekBar;

    .line 4
    .line 5
    iget-object p3, p0, Lo/ne;->Ͱ:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object p4, p0, Lo/ne;->ͱ:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3, p4}, Lo/ff;->Ώ(Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

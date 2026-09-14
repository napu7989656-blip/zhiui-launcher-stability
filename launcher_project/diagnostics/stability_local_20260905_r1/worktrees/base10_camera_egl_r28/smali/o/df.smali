.class public final Lo/df;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final stabilityTileSlot:Lcom/byd/launcher/stability/TileSlot;
.field public volatile stabilityTileAction:Ljava/lang/Object;
.field public final ʹ:Lo/bf;

.field public final ˋ:Ljava/lang/String;

.field public final ˏ:Ljava/lang/String;

.field public final Ͱ:I

.field public final ͱ:Ljava/lang/Runnable;

.field public final Ͳ:Ljava/lang/Runnable;

.field public final ͳ:Lo/ef;

.field public Ͷ:Landroid/widget/FrameLayout;

.field public ͷ:Landroid/widget/TextView;

.field public ͺ:Landroid/widget/ImageView;

.field public volatile ͻ:Z

.field public volatile ͼ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/df;->ͻ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/df;->ͼ:J

    iput-object p1, p0, Lo/df;->ˋ:Ljava/lang/String;

    iput-object p2, p0, Lo/df;->ˏ:Ljava/lang/String;

    iput p3, p0, Lo/df;->Ͱ:I

    iput-object p4, p0, Lo/df;->ͱ:Ljava/lang/Runnable;

    iput-object p5, p0, Lo/df;->ͳ:Lo/ef;

    iput-object p6, p0, Lo/df;->ʹ:Lo/bf;

    iput-object p7, p0, Lo/df;->Ͳ:Ljava/lang/Runnable;

    new-instance v0, Lcom/byd/launcher/stability/TileSlot;
    invoke-direct {v0}, Lcom/byd/launcher/stability/TileSlot;-><init>()V
    iput-object v0, p0, Lo/df;->stabilityTileSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-static {p0}, Lcom/byd/launcher/stability/TileSnapshots;->action(Lo/df;)V
    return-void
.end method

.class public final Lcom/byd/launcher/stability/ThemeRead;
.super Ljava/lang/Object;
.field private static volatile preferenceEpoch:Ljava/lang/Object;
.field private final owner:Lo/ff;
.field private final expectedEpoch:Ljava/lang/Object;
.field private final ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    sput-object v0, Lcom/byd/launcher/stability/ThemeRead;->preferenceEpoch:Ljava/lang/Object;
    return-void
.end method
.method public static preferenceChanged()V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    sput-object v0, Lcom/byd/launcher/stability/ThemeRead;->preferenceEpoch:Ljava/lang/Object;
    return-void
.end method
.method public constructor <init>(Lo/ff;)V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/ThemeRead;->owner:Lo/ff;
    sget-object v0, Lcom/byd/launcher/stability/ThemeRead;->preferenceEpoch:Ljava/lang/Object;
    iput-object v0, p0, Lcom/byd/launcher/stability/ThemeRead;->expectedEpoch:Ljava/lang/Object;
    iget-object v0, p1, Lo/ff;->stabilityThemeSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->begin()Lcom/byd/launcher/stability/TileSlot$Ticket;
    move-result-object v0
    iput-object v0, p0, Lcom/byd/launcher/stability/ThemeRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    return-void
.end method
.method public current()Z
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/stability/ThemeRead;->owner:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v1, v2, :no
    iget-object v1, p0, Lcom/byd/launcher/stability/ThemeRead;->expectedEpoch:Ljava/lang/Object;
    sget-object v2, Lcom/byd/launcher/stability/ThemeRead;->preferenceEpoch:Ljava/lang/Object;
    if-ne v1, v2, :no
    iget-object v0, p0, Lcom/byd/launcher/stability/ThemeRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot$Ticket;->isCurrent()Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public post(Ljava/lang/Runnable;)V
    .locals 4
    invoke-virtual {p0}, Lcom/byd/launcher/stability/ThemeRead;->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/ThemeRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    iget-object v2, p0, Lcom/byd/launcher/stability/ThemeRead;->owner:Lo/ff;
    new-instance v1, Lcom/byd/launcher/stability/TileSnapshots;
    invoke-direct {v1, v2}, Lcom/byd/launcher/stability/TileSnapshots;-><init>(Lo/ff;)V
    new-instance v3, Lcom/byd/launcher/stability/ThemeDeliver;
    invoke-direct {v3, p0, p1}, Lcom/byd/launcher/stability/ThemeDeliver;-><init>(Lcom/byd/launcher/stability/ThemeRead;Ljava/lang/Runnable;)V
    invoke-virtual {v0, v1, v3}, Lcom/byd/launcher/stability/TileSlot$Ticket;->post(Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public static close(Lo/ff;)V
    .locals 1
    iget-object v0, p0, Lo/ff;->stabilityThemeSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    return-void
.end method

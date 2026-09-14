.class public final Lcom/byd/launcher/stability/NavVolumeApply;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final job:Lo/je;
.field private final value:I
.field private final delegate:Ljava/lang/Runnable;

.method public constructor <init>(Lo/je;ILjava/lang/Runnable;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/NavVolumeApply;->job:Lo/je;
    iput p2, p0, Lcom/byd/launcher/stability/NavVolumeApply;->value:I
    iput-object p3, p0, Lcom/byd/launcher/stability/NavVolumeApply;->delegate:Ljava/lang/Runnable;
    return-void
.end method

.method public static submit(Lo/je;ILjava/lang/Runnable;)V
    .locals 2
    new-instance v0, Lcom/byd/launcher/stability/NavVolumeApply;
    invoke-direct {v0, p0, p1, p2}, Lcom/byd/launcher/stability/NavVolumeApply;-><init>(Lo/je;ILjava/lang/Runnable;)V
    iget-object v1, p0, Lo/je;->stabilityNavRead:Lcom/byd/launcher/stability/NavRead;
    invoke-virtual {v1, v0}, Lcom/byd/launcher/stability/NavRead;->post(Ljava/lang/Runnable;)V
    return-void
.end method

.method public final run()V
    .locals 5
    iget-object v0, p0, Lcom/byd/launcher/stability/NavVolumeApply;->job:Lo/je;
    iget-object v1, v0, Lo/je;->ͱ:Lo/ff;
    invoke-static {v1}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :done
    iget-object v2, v1, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v2, v3, :done
    iget-object v2, v0, Lo/je;->stabilityNavTicket:Lcom/byd/launcher/stability/LatestRead$Ticket;
    if-eqz v2, :done
    invoke-virtual {v2}, Lcom/byd/launcher/stability/LatestRead$Ticket;->isCurrent()Z
    move-result v2
    if-eqz v2, :done
    iget-object v2, v0, Lo/je;->stabilityNavRoot:Landroid/view/View;
    if-eqz v2, :done
    iget-object v3, v1, Lo/ff;->ͳ:Landroid/view/View;
    if-eq v2, v3, :apply
    iget-object v3, v1, Lo/ff;->Ώ:Landroid/view/View;
    if-ne v2, v3, :done
    :apply
    iget v2, p0, Lcom/byd/launcher/stability/NavVolumeApply;->value:I
    if-ltz v2, :done
    iget-object v3, p0, Lcom/byd/launcher/stability/NavVolumeApply;->delegate:Ljava/lang/Runnable;
    if-eqz v3, :done
    :try_start
    iput v2, v1, Lo/ff;->Λ:I
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    :done
    return-void
    :failed
    move-exception v4
    const-string v2, "QuickSettingsMgr"
    const-string v3, "Navigation volume result publication failed"
    invoke-static {v2, v3, v4}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method

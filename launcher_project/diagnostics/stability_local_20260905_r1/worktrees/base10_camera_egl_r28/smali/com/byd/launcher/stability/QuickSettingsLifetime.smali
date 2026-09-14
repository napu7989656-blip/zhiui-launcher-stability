.class public final Lcom/byd/launcher/stability/QuickSettingsLifetime;
.super Ljava/lang/Object;
.source "QuickSettingsLifetime"

.method public static isDisposed(Ljava/lang/Object;)Z
    .locals 2
    instance-of v0, p0, Lo/we;
    if-eqz v0, :check_seek_adapter
    check-cast p0, Lo/we;
    iget-object p0, p0, Lo/we;->ˏ:Ljava/lang/Object;
    goto :check_controller
    :check_seek_adapter
    instance-of v0, p0, Lo/re;
    if-eqz v0, :check_controller
    check-cast p0, Lo/re;
    iget-object p0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    :check_controller
    instance-of v0, p0, Lo/ze;
    if-eqz v0, :direct_controller
    check-cast p0, Lo/ze;
    iget-object p0, p0, Lo/ze;->ˏ:Lo/ff;
    :direct_controller
    instance-of v0, p0, Lo/ff;
    if-eqz v0, :check_editor
    check-cast p0, Lo/ff;
    iget-boolean v0, p0, Lo/ff;->stabilityDisposed:Z
    if-nez v0, :disposed
    iget-object p0, p0, Lo/ff;->ˋ:Landroid/content/Context;
    goto :check_service
    :check_editor
    instance-of v0, p0, Lo/f4;
    if-eqz v0, :alive
    check-cast p0, Lo/f4;
    iget-boolean v0, p0, Lo/f4;->stabilityDisposed:Z
    if-nez v0, :disposed
    iget-object p0, p0, Lo/f4;->ˋ:Landroid/content/Context;
    :check_service
    instance-of v0, p0, Lcom/byd/launcher/NavBarService;
    if-eqz v0, :alive
    check-cast p0, Lcom/byd/launcher/NavBarService;
    iget-boolean v0, p0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v0, :disposed
    :alive
    const/4 v0, 0x0
    return v0
    :disposed
    const/4 v0, 0x1
    return v0
.end method

.method public static isServiceDestroyed(Lcom/byd/launcher/NavBarService;)Z
    .locals 1
    if-eqz p0, :missing_service
    iget-boolean v0, p0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    return v0
    :missing_service
    const/4 v0, 0x1
    return v0
.end method

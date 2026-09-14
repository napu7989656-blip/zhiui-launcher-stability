.class public final Lcom/byd/launcher/stability/NotificationInitHost;
.super Ljava/lang/Object;
.implements Lcom/byd/launcher/stability/NotificationInit$Host;
.implements Lcom/byd/launcher/stability/InitProcess$Gate;
.field private final owner:Lcom/byd/launcher/NavBarService;

.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/NotificationInitHost;->owner:Lcom/byd/launcher/NavBarService;
    return-void
.end method

.method public current()Z
    .locals 2
    iget-object v0, p0, Lcom/byd/launcher/stability/NotificationInitHost;->owner:Lcom/byd/launcher/NavBarService;
    if-eqz v0, :invalid
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v1, :invalid
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method

.method public read()Lcom/byd/launcher/stability/ListenerList;
    .locals 6
    invoke-virtual {p0}, Lcom/byd/launcher/stability/NotificationInitHost;->current()Z
    move-result v0
    if-eqz v0, :unknown
    :try_start
    iget-object v0, p0, Lcom/byd/launcher/stability/NotificationInitHost;->owner:Lcom/byd/launcher/NavBarService;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    const-string v1, "enabled_notification_listeners"
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x1
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;
    move-result-object v0
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :fallback
    return-object v0
    :fallback
    move-exception v0
    const/4 v0, 0x4
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "settings"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "get"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "secure"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "enabled_notification_listeners"
    aput-object v2, v0, v1
    const/16 v1, 0x7d0
    const/16 v2, 0x2000
    invoke-static {v0, v1, v2, p0}, Lcom/byd/launcher/stability/InitProcess;->run([Ljava/lang/String;IILcom/byd/launcher/stability/InitProcess$Gate;)Lcom/byd/launcher/stability/InitProcess$Result;
    move-result-object v0
    invoke-virtual {v0}, Lcom/byd/launcher/stability/InitProcess$Result;->successful()Z
    move-result v1
    iget-object v0, v0, Lcom/byd/launcher/stability/InitProcess$Result;->output:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;
    move-result-object v0
    return-object v0
    :unknown
    const/4 v0, 0x0
    const/4 v1, 0x0
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;
    move-result-object v0
    return-object v0
.end method

.method public adb(Ljava/lang/String;)V
    .locals 2
    const-string v0, "cmd notification "
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    const/16 v1, 0x7d0
    if-eqz v0, :invoke
    const/16 v1, 0xbb8
    :invoke
    invoke-static {p1, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    return-void
.end method

.method public process([Ljava/lang/String;)V
    .locals 3
    const/4 v0, 0x0
    aget-object v0, p1, v0
    const-string v1, "cmd"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/16 v1, 0x7d0
    if-eqz v0, :invoke
    const/16 v1, 0xbb8
    :invoke
    const/16 v2, 0x2000
    invoke-static {p1, v1, v2, p0}, Lcom/byd/launcher/stability/InitProcess;->run([Ljava/lang/String;IILcom/byd/launcher/stability/InitProcess$Gate;)Lcom/byd/launcher/stability/InitProcess$Result;
    return-void
.end method

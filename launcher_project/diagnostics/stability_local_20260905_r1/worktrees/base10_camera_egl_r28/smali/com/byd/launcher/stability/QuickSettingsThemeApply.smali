.class public final Lcom/byd/launcher/stability/QuickSettingsThemeApply;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "QuickSettingsThemeApply"

.field private final owner:Lo/ff;
.field private final mode:I
.field private final expectedMode:I

.method public constructor <init>(Lo/ff;II)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/QuickSettingsThemeApply;->owner:Lo/ff;
    iput p2, p0, Lcom/byd/launcher/stability/QuickSettingsThemeApply;->mode:I
    iput p3, p0, Lcom/byd/launcher/stability/QuickSettingsThemeApply;->expectedMode:I
    return-void
.end method

.method public run()V
    .locals 5
    iget-object v0, p0, Lcom/byd/launcher/stability/QuickSettingsThemeApply;->owner:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :done
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;
    instance-of v1, v0, Lcom/byd/launcher/NavBarService;
    if-eqz v1, :done
    check-cast v0, Lcom/byd/launcher/NavBarService;
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :done
    :try_start_apply
    invoke-static {v0}, Lo/ci;->Ͱ(Landroid/content/Context;)I
    move-result v1
    iget v2, p0, Lcom/byd/launcher/stability/QuickSettingsThemeApply;->expectedMode:I
    if-ne v1, v2, :done
    iget v1, p0, Lcom/byd/launcher/stability/QuickSettingsThemeApply;->mode:I
    if-ltz v1, :done
    const/4 v2, 0x2
    if-gt v1, v2, :done
    invoke-static {v0, v1}, Lo/ci;->Ͷ(Landroid/content/Context;I)V
    const/4 v3, 0x0
    const/4 v4, 0x1
    if-ne v1, v2, :fixed_mode
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v1
    const/16 v2, 0xb
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
    move-result v1
    const/4 v2, 0x7
    if-lt v1, v2, :apply
    const/16 v2, 0x13
    if-ge v1, v2, :apply
    goto :light
    :fixed_mode
    if-ne v1, v4, :apply
    :light
    move v3, v4
    :apply
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->Ύ(Z)V
    :try_end_apply
    .catch Ljava/lang/Exception; {:try_start_apply .. :try_end_apply} :failed
    :done
    return-void
    :failed
    move-exception v0
    const-string v1, "QuickSettingsMgr"
    const-string v2, "Owned main-thread theme publication failed"
    invoke-static {v1, v2, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method

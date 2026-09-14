.class public final Lcom/byd/launcher/stability/TileState;
.super Ljava/lang/Object;
.method public static read(Lo/ef;)Z
    .locals 1
    if-eqz p0, :no
    instance-of v0, p0, Lo/ke;
    if-eqz v0, :other
    check-cast p0, Lo/ke;
    invoke-virtual {p0}, Lo/ke;->stabilityRead()Z
    move-result v0
    return v0
    :other
    invoke-interface {p0}, Lo/ef;->get()Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method

.method public static commit(Lo/ff;Lo/df;Z)V
    .locals 2
    if-eqz p1, :done
    iget-object v0, p1, Lo/df;->ͳ:Lo/ef;
    instance-of v1, v0, Lo/ke;
    if-eqz v1, :done
    check-cast v0, Lo/ke;
    iget-object v1, v0, Lo/ke;->ˏ:Lo/ff;
    if-ne p0, v1, :done
    invoke-virtual {v0, p2}, Lo/ke;->stabilityCommit(Z)V
    :done
    return-void
.end method

.method public static subtitle(Lo/ff;Lo/df;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    iget-object v0, p1, Lo/df;->ʹ:Lo/bf;
    instance-of v1, v0, Lo/ke;
    if-eqz v1, :original
    check-cast v0, Lo/ke;
    iget-object v1, v0, Lo/ke;->ˏ:Lo/ff;
    if-ne p0, v1, :original
    iget v1, v0, Lo/ke;->ˋ:I
    const/4 v2, 0x4
    if-eq v1, v2, :cached
    const/4 v2, 0x7
    if-ne v1, v2, :original
    :cached
    invoke-virtual {v0}, Lo/ke;->ˏ()Ljava/lang/String;
    move-result-object v0
    return-object v0
    :original
    return-object p2
.end method

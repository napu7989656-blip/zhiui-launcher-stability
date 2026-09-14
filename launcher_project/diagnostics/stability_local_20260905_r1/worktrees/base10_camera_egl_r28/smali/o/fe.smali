.class public final synthetic Lo/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Ljava/lang/String;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;

.field public final synthetic Ͳ:Lo/df;

.field public final synthetic ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lo/fe;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/fe;->ͱ:Lo/ff;

    .line 4
    .line 5
    iput-object p2, p0, Lo/fe;->Ͳ:Lo/df;

    .line 6
    .line 7
    iput-boolean p3, p0, Lo/fe;->ͳ:Z

    .line 8
    .line 9
    iput-object p4, p0, Lo/fe;->ʹ:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/fe;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/fe;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/fe;->ʹ:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lo/fe;->ͳ:Z

    .line 6
    .line 7
    iget-object v3, p0, Lo/fe;->Ͳ:Lo/df;

    .line 8
    .line 9
    iget-object v4, p0, Lo/fe;->ͱ:Lo/ff;

    invoke-static {v4, v3, v2}, Lcom/byd/launcher/stability/TileState;->commit(Lo/ff;Lo/df;Z)V
    invoke-static {v4, v3, v1}, Lcom/byd/launcher/stability/TileState;->subtitle(Lo/ff;Lo/df;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-virtual {v4, v3, v2, v1}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    invoke-virtual {v4, v3, v2, v1}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

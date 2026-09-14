.class public final synthetic Lo/xd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/xd;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/xd;->ͱ:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo/xd;->Ͱ:I

    iget-object v1, p0, Lo/xd;->ͱ:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->ˏ(Landroid/content/Context;)V

    return-void

    :goto_0
    invoke-static {v1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->Ͱ(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

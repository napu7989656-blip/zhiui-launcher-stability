.class public final synthetic Lo/wd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/wd;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/wd;->ͱ:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 4
    .line 5
    iput p2, p0, Lo/wd;->Ͳ:I

    .line 6
    .line 7
    iput-object p3, p0, Lo/wd;->ͳ:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo/wd;->Ͱ:I

    iget-object v1, p0, Lo/wd;->ͱ:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    iget-object v2, p0, Lo/wd;->ͳ:Ljava/lang/Object;

    iget v3, p0, Lo/wd;->Ͳ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v3, v2}, Landroidx/profileinstaller/ProfileInstaller;->ˏ(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return-void

    :goto_0
    invoke-static {v1, v3, v2}, Landroidx/profileinstaller/ProfileInstaller;->ˋ(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lo/gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/gi;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/gi;->ͱ:Landroidx/appcompat/widget/Toolbar;

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
    iget v0, p0, Lo/gi;->Ͱ:I

    iget-object v1, p0, Lo/gi;->ͱ:Landroidx/appcompat/widget/Toolbar;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->invalidateMenu()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

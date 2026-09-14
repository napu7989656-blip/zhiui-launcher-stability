.class public final synthetic Lo/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic ˋ:Lo/g4;


# direct methods
.method public synthetic constructor <init>(Lo/g4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/hc;->ˋ:Lo/g4;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/hc;->ˋ:Lo/g4;

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->ˋ(Lo/g4;)V

    return-void
.end method

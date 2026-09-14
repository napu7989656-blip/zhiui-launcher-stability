.class public abstract Lo/Έ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/j1;


# instance fields
.field public final Ͱ:Lkotlin/jvm/functions/Function1;

.field public final ͱ:Lo/j1;


# direct methods
.method public constructor <init>(Lo/j1;Lo/ch;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/Έ;->Ͱ:Lkotlin/jvm/functions/Function1;

    instance-of p2, p1, Lo/Έ;

    if-eqz p2, :cond_0

    check-cast p1, Lo/Έ;

    iget-object p1, p1, Lo/Έ;->ͱ:Lo/j1;

    :cond_0
    iput-object p1, p0, Lo/Έ;->ͱ:Lo/j1;

    return-void
.end method

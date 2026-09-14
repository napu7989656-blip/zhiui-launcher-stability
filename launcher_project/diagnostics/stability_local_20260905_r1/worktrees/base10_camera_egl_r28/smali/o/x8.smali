.class public final synthetic Lo/x8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic ˋ:Lo/a9;


# direct methods
.method public synthetic constructor <init>(Lo/a9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/x8;->ˋ:Lo/a9;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/x8;->ˋ:Lo/a9;

    invoke-virtual {v0, p1}, Lo/a9;->Ͷ(Ljava/util/List;)V

    return-void
.end method

.class public final Lo/n;
.super Lo/n6;
.source "SourceFile"

# interfaces
.implements Lo/m;


# instance fields
.field public final ʹ:Lo/o;


# direct methods
.method public constructor <init>(Lo/s6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/n6;-><init>()V

    iput-object p1, p0, Lo/n;->ʹ:Lo/o;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/n;->Ύ(Ljava/lang/Throwable;)V

    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

.method public final Ͳ(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/o6;->Ό()Lo/s6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/s6;->ͽ(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final Ύ(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/o6;->Ό()Lo/s6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lo/n;->ʹ:Lo/o;

    .line 6
    .line 7
    check-cast v0, Lo/s6;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lo/s6;->ͷ(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.class public abstract Lo/of;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ͱ:Lo/nf;

.field public static final ͱ:Lo/ΐ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/nf;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/nf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo/of;->Ͱ:Lo/nf;

    .line 7
    .line 8
    sget-object v0, Lo/k6;->ˋ:Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x22

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lo/pd;

    .line 27
    .line 28
    invoke-direct {v0}, Lo/pd;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    new-instance v0, Lo/n3;

    .line 33
    .line 34
    invoke-direct {v0}, Lo/n3;-><init>()V

    .line 35
    .line 36
    .line 37
    :goto_2
    sput-object v0, Lo/of;->ͱ:Lo/ΐ;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

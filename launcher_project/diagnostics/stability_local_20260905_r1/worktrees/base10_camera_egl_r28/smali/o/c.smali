.class public final Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ˋ:Lo/c;

.field public static final ˏ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lo/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo/c;->ˋ:Lo/c;

    .line 7
    .line 8
    const-string v7, "kotlinx.coroutines.channels.defaultBuffer"

    .line 9
    .line 10
    const/16 v0, 0x40

    .line 11
    .line 12
    int-to-long v1, v0

    .line 13
    const/4 v0, 0x1

    .line 14
    int-to-long v3, v0

    .line 15
    const v0, 0x7ffffffe

    .line 16
    .line 17
    .line 18
    int-to-long v5, v0

    .line 19
    invoke-static/range {v1 .. v7}, Lo/a2;->Ζ(JJJLjava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    sput v0, Lo/c;->ˏ:I

    .line 25
    .line 26
    return-void
.end method

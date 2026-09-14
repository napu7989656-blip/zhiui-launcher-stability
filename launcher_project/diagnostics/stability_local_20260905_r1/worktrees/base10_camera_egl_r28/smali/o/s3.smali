.class public final Lo/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/vg;


# instance fields
.field public final ˋ:Lo/vg;

.field public final ˏ:Z

.field public final Ͱ:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lo/h5;)V
    .locals 1

    .line 1
    sget-object v0, Lo/ch;->ͱ:Lo/ch;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lo/s3;->ˋ:Lo/vg;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lo/s3;->ˏ:Z

    .line 10
    .line 11
    iput-object v0, p0, Lo/s3;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lo/r3;

    invoke-direct {v0, p0}, Lo/r3;-><init>(Lo/s3;)V

    return-object v0
.end method

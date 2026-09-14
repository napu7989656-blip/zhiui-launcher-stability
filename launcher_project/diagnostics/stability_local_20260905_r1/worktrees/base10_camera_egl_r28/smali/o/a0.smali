.class public final Lo/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ˋ:Ljava/lang/String;

.field public final synthetic ˏ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/a0;->ˋ:Ljava/lang/String;

    iput p2, p0, Lo/a0;->ˏ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/a0;->ˋ:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lo/a0;->ˏ:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Lo/c0;->ˋ(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

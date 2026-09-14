.class public final synthetic Lo/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Lo/ka;

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Lo/nj;

.field public final synthetic ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lo/ka;ILo/nj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/hj;->Ͱ:Lo/ka;

    iput p2, p0, Lo/hj;->ͱ:I

    iput-object p3, p0, Lo/hj;->Ͳ:Lo/nj;

    iput-boolean p4, p0, Lo/hj;->ͳ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/hj;->Ͱ:Lo/ka;

    .line 2
    .line 3
    iget-object v0, v0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lo/hj;->ͱ:I

    .line 6
    .line 7
    iget-object v2, p0, Lo/hj;->Ͳ:Lo/nj;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, p0, Lo/hj;->ͳ:Z

    .line 12
    .line 13
    iput-boolean v1, v2, Lo/nj;->Ͷ:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v3, "\u5df2\u6253\u5f00"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "\u5df2\u5173\u95ed"

    .line 21
    .line 22
    :goto_0
    iput-object v3, v2, Lo/nj;->ͷ:Ljava/lang/String;

    .line 23
    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Lo/oj;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v1, "\u540e\u5907\u7bb1\u5df2\u6253\u5f00"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string v1, "\u540e\u5907\u7bb1\u5df2\u5173\u95ed"

    .line 33
    .line 34
    :goto_1
    sget v4, Lo/oj;->Α:I

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object v3, v0

    .line 38
    check-cast v3, Lo/oj;

    .line 39
    .line 40
    sget v1, Lo/oj;->Α:I

    .line 41
    .line 42
    const-string v1, "\u540e\u5907\u7bb1\u64cd\u4f5c\u5931\u8d25"

    .line 43
    .line 44
    :goto_2
    invoke-virtual {v3, v1}, Lo/oj;->Δ(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lo/oj;

    .line 48
    .line 49
    iget-object v1, v0, Lo/oj;->ͺ:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ltz v1, :cond_3

    .line 56
    .line 57
    invoke-static {v0, v1}, Lo/oj;->Ͱ(Lo/oj;I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

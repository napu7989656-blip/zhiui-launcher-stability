.class public abstract Lo/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˋ:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lo/v1;->ͺ()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lo/zg;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, v0}, Lo/zg;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    instance-of v0, v1, Lo/w0;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lo/w0;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lo/w0;-><init>(Lo/zg;)V

    .line 24
    .line 25
    .line 26
    move-object v1, v0

    .line 27
    :goto_0
    invoke-static {v1}, Lo/yg;->Ε(Lo/vg;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lo/p1;->ˋ:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method public static final ˋ(Lo/k1;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    sget-object v0, Lo/p1;->ˋ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lo/o1;

    .line 18
    .line 19
    :try_start_0
    check-cast v1, Lo/Τ;

    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Lo/Τ;->Ͱ(Lo/k1;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-ne p1, v1, :cond_0

    .line 35
    .line 36
    move-object v4, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v5, "Exception while trying to handle coroutine exception"

    .line 41
    .line 42
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v4, p1}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-interface {v3, v2, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :try_start_1
    new-instance v1, Lo/i2;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lo/i2;-><init>(Lo/k1;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    invoke-static {p0}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 67
    .line 68
    .line 69
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

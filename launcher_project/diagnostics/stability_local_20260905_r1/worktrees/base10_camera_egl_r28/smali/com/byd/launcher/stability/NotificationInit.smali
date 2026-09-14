.class public final Lcom/byd/launcher/stability/NotificationInit;
.super Ljava/lang/Object;
.source "NotificationInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/NotificationInit$Host;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adb(Lcom/byd/launcher/stability/NotificationInit$Host;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/byd/launcher/stability/NotificationInit$Host;->adb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    .line 27
    throw p0
.end method

.method private static current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/byd/launcher/stability/NotificationInit$Host;->current()Z

    move-result p0

    return p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public static ensure(Lcom/byd/launcher/stability/NotificationInit$Host;Ljava/lang/String;)Z
    .locals 7

    .line 37
    const-string v0, "\'"

    .line 0
    const-string v1, "settings put secure enabled_notification_listeners \'"

    const-string v2, "cmd notification allow_listener \'"

    const/4 v3, 0x0

    if-eqz p0, :cond_c

    .line 37
    const-string v4, ""

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/byd/launcher/stability/ListenerList;->adding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->read(Lcom/byd/launcher/stability/NotificationInit$Host;)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v4

    .line 40
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v6

    if-nez v6, :cond_1

    return v3

    .line 41
    :cond_1
    invoke-virtual {v4, p1}, Lcom/byd/launcher/stability/ListenerList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    .line 44
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/byd/launcher/stability/NotificationInit;->adb(Lcom/byd/launcher/stability/NotificationInit$Host;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->read(Lcom/byd/launcher/stability/NotificationInit$Host;)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v2

    .line 46
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    .line 47
    :cond_3
    invoke-virtual {v2, p1}, Lcom/byd/launcher/stability/ListenerList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v5

    .line 48
    :cond_4
    const-string v2, "cmd"

    const-string v4, "notification"

    const-string v6, "allow_listener"

    filled-new-array {v2, v4, v6, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/byd/launcher/stability/NotificationInit;->process(Lcom/byd/launcher/stability/NotificationInit$Host;[Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->read(Lcom/byd/launcher/stability/NotificationInit$Host;)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v2

    .line 50
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v4

    if-nez v4, :cond_5

    return v3

    .line 51
    :cond_5
    invoke-virtual {v2, p1}, Lcom/byd/launcher/stability/ListenerList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v5

    .line 52
    :cond_6
    invoke-virtual {v2, p1}, Lcom/byd/launcher/stability/ListenerList;->adding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    return v3

    .line 54
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byd/launcher/stability/NotificationInit;->adb(Lcom/byd/launcher/stability/NotificationInit$Host;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->read(Lcom/byd/launcher/stability/NotificationInit$Host;)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v0

    .line 56
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 57
    :cond_8
    invoke-virtual {v0, p1}, Lcom/byd/launcher/stability/ListenerList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v5

    .line 59
    :cond_9
    invoke-virtual {v0, p1}, Lcom/byd/launcher/stability/ListenerList;->adding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return v3

    .line 61
    :cond_a
    const-string v1, "settings"

    const-string v2, "put"

    const-string v4, "secure"

    const-string v6, "enabled_notification_listeners"

    filled-new-array {v1, v2, v4, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byd/launcher/stability/NotificationInit;->process(Lcom/byd/launcher/stability/NotificationInit$Host;[Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->read(Lcom/byd/launcher/stability/NotificationInit$Host;)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v0

    .line 63
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v0, p1}, Lcom/byd/launcher/stability/ListenerList;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_b

    move v3, v5

    :cond_b
    return v3

    .line 65
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_c
    :goto_0
    return v3
.end method

.method private static process(Lcom/byd/launcher/stability/NotificationInit$Host;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/byd/launcher/stability/NotificationInit$Host;->process([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    .line 33
    throw p0
.end method

.method private static read(Lcom/byd/launcher/stability/NotificationInit$Host;)Lcom/byd/launcher/stability/ListenerList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/byd/launcher/stability/NotificationInit$Host;->read()Lcom/byd/launcher/stability/ListenerList;

    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/byd/launcher/stability/NotificationInit;->current(Lcom/byd/launcher/stability/NotificationInit$Host;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 22
    :catch_0
    invoke-static {v2, v1}, Lcom/byd/launcher/stability/ListenerList;->parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 21
    throw p0
.end method

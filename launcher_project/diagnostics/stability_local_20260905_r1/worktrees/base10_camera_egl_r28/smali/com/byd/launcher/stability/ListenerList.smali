.class public final Lcom/byd/launcher/stability/ListenerList;
.super Ljava/lang/Object;
.source "ListenerList.java"


# static fields
.field private static final MAX_LENGTH:I = 0x2000


# instance fields
.field private final components:[Ljava/lang/String;

.field public final known:Z

.field private final raw:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/byd/launcher/stability/ListenerList;->known:Z

    iput-object p2, p0, Lcom/byd/launcher/stability/ListenerList;->raw:Ljava/lang/String;

    iput-object p3, p0, Lcom/byd/launcher/stability/ListenerList;->components:[Ljava/lang/String;

    return-void
.end method

.method private static component(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_5

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 33
    const-string v2, "[A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 34
    :cond_2
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    :cond_3
    const-string v2, "[A-Za-z_$][A-Za-z0-9_$]*(\\.[A-Za-z_$][A-Za-z0-9_$]*)*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    .line 36
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Lcom/byd/launcher/stability/ListenerList;
    .locals 4

    if-nez p1, :cond_0

    .line 14
    invoke-static {}, Lcom/byd/launcher/stability/ListenerList;->unknown()Lcom/byd/launcher/stability/ListenerList;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    const-string p1, ""

    if-nez p0, :cond_1

    move-object p0, p1

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/byd/launcher/stability/ListenerList;->unknown()Lcom/byd/launcher/stability/ListenerList;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    const-string p1, ":"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 20
    array-length v0, p1

    const/16 v3, 0x100

    if-le v0, v3, :cond_4

    invoke-static {}, Lcom/byd/launcher/stability/ListenerList;->unknown()Lcom/byd/launcher/stability/ListenerList;

    move-result-object p0

    return-object p0

    .line 21
    :cond_4
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_6

    .line 23
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/byd/launcher/stability/ListenerList;->component(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    if-nez v3, :cond_5

    .line 24
    invoke-static {}, Lcom/byd/launcher/stability/ListenerList;->unknown()Lcom/byd/launcher/stability/ListenerList;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_6
    new-instance p1, Lcom/byd/launcher/stability/ListenerList;

    invoke-direct {p1, v2, p0, v0}, Lcom/byd/launcher/stability/ListenerList;-><init>(ZLjava/lang/String;[Ljava/lang/String;)V

    return-object p1

    .line 18
    :cond_7
    :goto_1
    new-instance p0, Lcom/byd/launcher/stability/ListenerList;

    new-array v0, v1, [Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0}, Lcom/byd/launcher/stability/ListenerList;-><init>(ZLjava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private static unknown()Lcom/byd/launcher/stability/ListenerList;
    .locals 4

    .line 12
    new-instance v0, Lcom/byd/launcher/stability/ListenerList;

    const-string v1, ""

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lcom/byd/launcher/stability/ListenerList;-><init>(ZLjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public adding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/byd/launcher/stability/ListenerList;->known:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/byd/launcher/stability/ListenerList;->component(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byd/launcher/stability/ListenerList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/byd/launcher/stability/ListenerList;->raw:Ljava/lang/String;

    return-object p1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/byd/launcher/stability/ListenerList;->raw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byd/launcher/stability/ListenerList;->raw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2000

    if-gt v0, v2, :cond_3

    move-object v1, p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5

    .line 39
    iget-boolean v0, p0, Lcom/byd/launcher/stability/ListenerList;->known:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/byd/launcher/stability/ListenerList;->component(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/byd/launcher/stability/ListenerList;->components:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

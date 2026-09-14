.class public abstract Lo/III;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u6;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lo/u6;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lo/IIl;->Ͱ:Lo/IIl;

    sput-object v0, Lo/III;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/III;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lo/III;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lo/III;->name:Ljava/lang/String;

    iput-object p4, p0, Lo/III;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lo/III;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/u6;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/u6;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lo/u6;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/III;->reflected:Lo/u6;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/III;->computeReflected()Lo/u6;

    move-result-object v0

    iput-object v0, p0, Lo/III;->reflected:Lo/u6;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lo/u6;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/t6;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/III;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/III;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lo/w6;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/III;->owner:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v1, p0, Lo/III;->isTopLevel:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lo/vf;->ˋ:Lo/wf;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lo/lc;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lo/lc;-><init>(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v1, Lo/vf;->ˋ:Lo/wf;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lo/q;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lo/q;-><init>(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    move-object v0, v1

    .line 33
    :goto_1
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getReflected()Lo/u6;
.end method

.method public getReturnType()Lo/z6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->getReturnType()Lo/z6;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/III;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lo/a7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->getVisibility()Lo/a7;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/III;->getReflected()Lo/u6;

    move-result-object v0

    invoke-interface {v0}, Lo/u6;->isOpen()Z

    move-result v0

    return v0
.end method

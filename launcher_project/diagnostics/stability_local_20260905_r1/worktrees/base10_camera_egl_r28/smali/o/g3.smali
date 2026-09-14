.class public final Lo/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final Ͱ:Ljava/lang/Class;


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .locals 1

    .line 1
    const-string v0, "entries"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/g3;->Ͱ:Ljava/lang/Class;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/g3;->Ͱ:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "c.enumConstants"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, [Ljava/lang/Enum;

    .line 13
    .line 14
    new-instance v1, Lo/f3;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lo/f3;-><init>([Ljava/lang/Enum;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.class public final Lo/mf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J

.field public static final Ͱ:Lo/mf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/mf;

    invoke-direct {v0}, Lo/mf;-><init>()V

    sput-object v0, Lo/mf;->Ͱ:Lo/mf;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo/of;->Ͱ:Lo/nf;

    return-object v0
.end method

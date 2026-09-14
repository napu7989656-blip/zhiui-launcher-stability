.class public final Lo/mm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final Ͱ:I

.field public final ͱ:Ljava/lang/String;

.field public final Ͳ:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/mm;->Ͱ:I

    iput-object p2, p0, Lo/mm;->ͱ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lo/mm;->Ͱ:I

    iput-object p2, p0, Lo/mm;->ͱ:Ljava/lang/String;

    iput-object p1, p0, Lo/mm;->Ͳ:Ljava/lang/String;

    return-void
.end method

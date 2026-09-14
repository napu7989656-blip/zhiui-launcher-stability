.class public final Lo/nj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʹ:I

.field public final ˋ:Ljava/lang/String;

.field public ˏ:Ljava/lang/String;

.field public final Ͱ:I

.field public final ͱ:I

.field public final Ͳ:Ljava/lang/String;

.field public final ͳ:Ljava/lang/String;

.field public Ͷ:Z

.field public ͷ:Ljava/lang/String;

.field public final ͺ:I

.field public final ͻ:I

.field public ͼ:I

.field public final ͽ:Ljava/lang/String;

.field public final Ά:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/nj;->Ͷ:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lo/nj;->ͷ:Ljava/lang/String;

    iput v0, p0, Lo/nj;->ͺ:I

    const/16 v1, 0x64

    iput v1, p0, Lo/nj;->ͻ:I

    iput v0, p0, Lo/nj;->ͼ:I

    const-string v1, "%"

    iput-object v1, p0, Lo/nj;->ͽ:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lo/nj;->Ά:I

    iput-object p3, p0, Lo/nj;->ˋ:Ljava/lang/String;

    iput-object p4, p0, Lo/nj;->ˏ:Ljava/lang/String;

    iput p1, p0, Lo/nj;->Ͱ:I

    iput p2, p0, Lo/nj;->ͱ:I

    iput-object p5, p0, Lo/nj;->Ͳ:Ljava/lang/String;

    iput-object p6, p0, Lo/nj;->ͳ:Ljava/lang/String;

    iput v0, p0, Lo/nj;->ʹ:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/nj;->Ͷ:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lo/nj;->ͷ:Ljava/lang/String;

    iput v0, p0, Lo/nj;->ͺ:I

    const/16 v1, 0x64

    iput v1, p0, Lo/nj;->ͻ:I

    const-string v2, "%"

    iput-object v2, p0, Lo/nj;->ͽ:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lo/nj;->Ά:I

    iput-object p1, p0, Lo/nj;->ˋ:Ljava/lang/String;

    iput-object p2, p0, Lo/nj;->ˏ:Ljava/lang/String;

    iput p3, p0, Lo/nj;->Ͱ:I

    iput p4, p0, Lo/nj;->ͱ:I

    iput-object p5, p0, Lo/nj;->Ͳ:Ljava/lang/String;

    const-string p1, "getWindowOpenPercent"

    iput-object p1, p0, Lo/nj;->ͳ:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lo/nj;->ʹ:I

    iput v0, p0, Lo/nj;->ͺ:I

    iput v1, p0, Lo/nj;->ͻ:I

    iput-object v2, p0, Lo/nj;->ͽ:Ljava/lang/String;

    iput v0, p0, Lo/nj;->ͼ:I

    .line 3
    iput p6, p0, Lo/nj;->Ά:I

    return-void
.end method

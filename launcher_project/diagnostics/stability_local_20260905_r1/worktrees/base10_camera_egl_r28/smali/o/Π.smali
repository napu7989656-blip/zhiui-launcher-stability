.class public final Lo/Π;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʹ:[B

.field public ˋ:I

.field public ˏ:I

.field public Ͱ:I

.field public ͱ:I

.field public Ͳ:I

.field public ͳ:I


# direct methods
.method public static ˋ(Ljava/io/InputStream;)Lo/Π;
    .locals 7

    .line 1
    new-instance v0, Lo/Π;

    invoke-direct {v0}, Lo/Π;-><init>()V

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    rsub-int/lit8 v6, v4, 0x18

    invoke-virtual {p0, v5, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const-string v6, "Stream closed"

    if-ltz v5, :cond_4

    add-int/2addr v4, v5

    if-lt v4, v1, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lo/Π;->ˋ:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lo/Π;->ˏ:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lo/Π;->Ͱ:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lo/Π;->ͱ:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lo/Π;->Ͳ:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lo/Π;->ͳ:I

    iget v1, v0, Lo/Π;->ͱ:I

    if-eqz v1, :cond_3

    new-array v1, v1, [B

    iput-object v1, v0, Lo/Π;->ʹ:[B

    :cond_1
    iget-object v1, v0, Lo/Π;->ʹ:[B

    iget v2, v0, Lo/Π;->ͱ:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/2addr v3, v1

    iget v1, v0, Lo/Π;->ͱ:I

    if-lt v3, v1, :cond_1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

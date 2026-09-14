.class public final Lo/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ͺ:Lo/gh;


# instance fields
.field public final ʹ:Ljava/util/concurrent/ExecutorService;

.field public ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

.field public volatile ˏ:Landroid/media/AudioTrack;

.field public Ͱ:I

.field public ͱ:I

.field public Ͳ:F

.field public ͳ:F

.field public final Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ͷ:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5622

    iput v0, p0, Lo/gh;->Ͱ:I

    const/4 v0, 0x3

    iput v0, p0, Lo/gh;->ͱ:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/gh;->Ͳ:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lo/gh;->ͳ:F

    new-instance v0, Lo/d1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lo/d1;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/gh;->ʹ:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/gh;->Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/gh;->ͷ:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static ˋ(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/data/com.byd.launcher/cache/tts_audio"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string v2, "keymap.txt"

    .line 20
    .line 21
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const-string v2, "UTF-8"

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 33
    .line 34
    new-instance v3, Ljava/io/InputStreamReader;

    .line 35
    .line 36
    new-instance v4, Ljava/io/FileInputStream;

    .line 37
    .line 38
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    throw p0

    .line 81
    :cond_3
    :goto_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 82
    .line 83
    new-instance v3, Ljava/io/FileOutputStream;

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 90
    .line 91
    .line 92
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, "\n"

    .line 101
    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 110
    .line 111
    .line 112
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_2
    move-exception p0

    .line 117
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_3
    move-exception v0

    .line 122
    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 126
    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "Failed to append key to map: "

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v1, "SherpaOnnxTts"

    .line 135
    .line 136
    invoke-static {p0, v0, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    return-void
.end method

.method public static ˏ(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ".pcm"

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-byte v6, v1, v5

    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized Ͱ()Lo/gh;
    .locals 2

    .line 1
    const-class v0, Lo/gh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/gh;->ͺ:Lo/gh;

    if-nez v1, :cond_0

    new-instance v1, Lo/gh;

    invoke-direct {v1}, Lo/gh;-><init>()V

    sput-object v1, Lo/gh;->ͺ:Lo/gh;

    :cond_0
    sget-object v1, Lo/gh;->ͺ:Lo/gh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static Ͳ()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sherpa-onnx-tts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v3, "model.onnx"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "tokens.txt"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static ͳ(Ljava/lang/String;)Lo/fh;
    .locals 6

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.byd.launcher/cache/tts_audio"

    invoke-static {p0}, Lo/gh;->ˏ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_3

    const v3, 0x989680

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-array v3, v2, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lo/fh;

    invoke-direct {v2, v3, v1}, Lo/fh;-><init>([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public static Ͷ(Ljava/lang/String;Lo/fh;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/data/com.byd.launcher/cache/tts_audio"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    invoke-static {p0}, Lo/gh;->ˏ(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Ljava/io/DataOutputStream;

    .line 27
    .line 28
    new-instance v0, Ljava/io/FileOutputStream;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget v0, p1, Lo/fh;->ˏ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    iget-object p1, p1, Lo/fh;->ˋ:[F

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    array-length v0, p1

    .line 44
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    array-length v0, p1

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    .line 51
    aget v2, p1, v1

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "Failed to save audio cache: "

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "SherpaOnnxTts"

    .line 82
    .line 83
    invoke-static {p0, p1, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-void
.end method


# virtual methods
.method public final ʹ([FII)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lo/gh;->ͳ:F

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    array-length v4, p1

    .line 7
    if-ge v3, v4, :cond_0

    .line 8
    .line 9
    aget v4, p1, v3

    .line 10
    .line 11
    mul-float/2addr v4, v1

    .line 12
    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/high16 v5, -0x40800000    # -1.0f

    .line 19
    .line 20
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    aput v4, p1, v3

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x4

    .line 30
    invoke-static {p2, v1, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget v5, p0, Lo/gh;->ͱ:I

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v4, Landroid/media/AudioFormat$Builder;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance p2, Landroid/media/AudioTrack;

    .line 80
    .line 81
    array-length v4, p1

    .line 82
    mul-int/2addr v4, v1

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    move-object v5, p2

    .line 90
    invoke-direct/range {v5 .. v10}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .line 92
    .line 93
    :try_start_1
    iget-object v1, p0, Lo/gh;->Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eq p3, v1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    iput-object p2, p0, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    .line 106
    .line 107
    iget v1, p0, Lo/gh;->Ͳ:F

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 110
    .line 111
    .line 112
    array-length v1, p1

    .line 113
    invoke-virtual {p2, p1, v2, v1, v2}, Landroid/media/AudioTrack;->write([FIII)I

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lo/gh;->Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eq p3, v1, :cond_2

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    array-length p1, p1

    .line 131
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 132
    .line 133
    .line 134
    new-instance p1, Lo/eh;

    .line 135
    .line 136
    invoke-direct {p1, p0, p2}, Lo/eh;-><init>(Lo/gh;Landroid/media/AudioTrack;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    move-exception p1

    .line 147
    goto :goto_1

    .line 148
    :catch_1
    move-exception p1

    .line 149
    move-object p2, v0

    .line 150
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v1, "playAudio error: "

    .line 153
    .line 154
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "SherpaOnnxTts"

    .line 158
    .line 159
    invoke-static {p1, p3, v1}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    if-eqz p2, :cond_3

    .line 163
    .line 164
    :try_start_2
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    .line 166
    .line 167
    :catch_2
    :cond_3
    iput-object v0, p0, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    .line 168
    .line 169
    :goto_2
    return-void
.end method

.method public final ͱ()Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    const-string v0, "/sdcard/sherpa-onnx-tts"

    .line 11
    .line 12
    invoke-static {}, Lo/gh;->Ͳ()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-string v4, "SherpaOnnxTts"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const-string v0, "TTS model not found at: /sdcard/sherpa-onnx-tts. Please push model files via: adb push vits-melo-tts-zh_en /sdcard/sherpa-onnx-tts"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    :try_start_0
    const-string v7, "/sdcard/sherpa-onnx-tts/model.onnx"

    .line 29
    .line 30
    const-string v3, "/sdcard/sherpa-onnx-tts/lexicon.txt"

    .line 31
    .line 32
    const-string v9, "/sdcard/sherpa-onnx-tts/tokens.txt"

    .line 33
    .line 34
    new-instance v6, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const-string v8, ""

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v3, v8

    .line 49
    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/File;

    .line 50
    .line 51
    const-string v10, "rule.far"

    .line 52
    .line 53
    invoke-direct {v6, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_3

    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    move-object v15, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v15, v8

    .line 69
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v10, 0x7

    .line 75
    new-array v11, v10, [Ljava/lang/String;

    .line 76
    .line 77
    const-string v12, "phone.fst"

    .line 78
    .line 79
    aput-object v12, v11, v5

    .line 80
    .line 81
    const-string v12, "date.fst"

    .line 82
    .line 83
    aput-object v12, v11, v2

    .line 84
    .line 85
    const-string v12, "number.fst"

    .line 86
    .line 87
    const/4 v13, 0x2

    .line 88
    aput-object v12, v11, v13

    .line 89
    .line 90
    const-string v12, "phone-zh.fst"

    .line 91
    .line 92
    const/4 v13, 0x3

    .line 93
    aput-object v12, v11, v13

    .line 94
    .line 95
    const-string v12, "date-zh.fst"

    .line 96
    .line 97
    const/4 v13, 0x4

    .line 98
    aput-object v12, v11, v13

    .line 99
    .line 100
    const-string v12, "number-zh.fst"

    .line 101
    .line 102
    const/4 v13, 0x5

    .line 103
    aput-object v12, v11, v13

    .line 104
    .line 105
    const-string v12, "new_heteronym.fst"

    .line 106
    .line 107
    const/4 v13, 0x6

    .line 108
    aput-object v12, v11, v13

    .line 109
    .line 110
    move v12, v5

    .line 111
    :goto_2
    if-ge v12, v10, :cond_6

    .line 112
    .line 113
    aget-object v13, v11, v12

    .line 114
    .line 115
    new-instance v14, Ljava/io/File;

    .line 116
    .line 117
    invoke-direct {v14, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eqz v13, :cond_5

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-lez v13, :cond_4

    .line 131
    .line 132
    const-string v13, ","

    .line 133
    .line 134
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-lez v10, :cond_7

    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    move-object v14, v6

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    move-object v14, v8

    .line 160
    :goto_3
    new-instance v6, Ljava/io/File;

    .line 161
    .line 162
    const-string v10, "dict"

    .line 163
    .line 164
    invoke-direct {v6, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    move-object v11, v0

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    move-object v11, v8

    .line 186
    :goto_4
    new-instance v0, Lo/gc;

    .line 187
    .line 188
    const-string v10, ""

    .line 189
    .line 190
    const v12, 0x3f2ac083    # 0.667f

    .line 191
    .line 192
    .line 193
    const v13, 0x3f4ccccd    # 0.8f

    .line 194
    .line 195
    .line 196
    const/high16 v16, 0x3f800000    # 1.0f

    .line 197
    .line 198
    move-object v6, v0

    .line 199
    move-object v8, v3

    .line 200
    move-object v3, v14

    .line 201
    move/from16 v14, v16

    .line 202
    .line 203
    invoke-direct/range {v6 .. v14}, Lo/gc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 204
    .line 205
    .line 206
    new-instance v6, Lo/fc;

    .line 207
    .line 208
    invoke-direct {v6}, Lo/fc;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v0, v6, Lo/fc;->ˋ:Lo/gc;

    .line 212
    .line 213
    iput v2, v6, Lo/fc;->ͱ:I

    .line 214
    .line 215
    iput-boolean v5, v6, Lo/fc;->Ͳ:Z

    .line 216
    .line 217
    const-string v0, "cpu"

    .line 218
    .line 219
    iput-object v0, v6, Lo/fc;->ͳ:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    .line 222
    .line 223
    invoke-direct {v0, v6, v3, v15}, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;-><init>(Lo/fc;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 227
    .line 228
    invoke-direct {v3, v0}, Lcom/k2fsa/sherpa/onnx/OfflineTts;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)V

    .line 229
    .line 230
    .line 231
    iput-object v3, v1, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->Ͱ()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iput v0, v1, Lo/gh;->Ͱ:I

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v3, "TTS initialized. sampleRate="

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget v3, v1, Lo/gh;->Ͱ:I

    .line 250
    .line 251
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v3, ", numSpeakers="

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v3, v1, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 260
    .line 261
    invoke-virtual {v3}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˏ()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :catch_0
    move-exception v0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v3, "Failed to init TTS: "

    .line 280
    .line 281
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v2, v4}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const/4 v0, 0x0

    .line 288
    iput-object v0, v1, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 289
    .line 290
    :goto_5
    move v2, v5

    .line 291
    :goto_6
    return v2
.end method

.method public final ͷ(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lo/gh;->Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    :catch_1
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "|0|1.0"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lo/gh;->ͷ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lo/fh;

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    invoke-static {v1}, Lo/gh;->ͳ(Ljava/lang/String;)Lo/fh;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v3, p0, Lo/gh;->ͷ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_2
    if-eqz v2, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lo/gh;->ʹ:Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    new-instance v3, Lo/fj;

    .line 80
    .line 81
    invoke-direct {v3, p0, v0, p1, v2}, Lo/fj;-><init>(Lo/gh;ILjava/lang/String;Lo/fh;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object v2, p0, Lo/gh;->ʹ:Ljava/util/concurrent/ExecutorService;

    .line 89
    .line 90
    new-instance v3, Lo/dh;

    .line 91
    .line 92
    invoke-direct {v3, p0, v0, p1, v1}, Lo/dh;-><init>(Lo/gh;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_0
    return-void
.end method

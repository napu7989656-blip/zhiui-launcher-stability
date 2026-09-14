.class public final synthetic Landroidx/emoji2/text/ˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

.field public final synthetic ͱ:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field public final synthetic Ͳ:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/ˏ;->Ͱ:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    iput-object p2, p0, Landroidx/emoji2/text/ˏ;->ͱ:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iput-object p3, p0, Landroidx/emoji2/text/ˏ;->Ͳ:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/ˏ;->ͱ:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iget-object v1, p0, Landroidx/emoji2/text/ˏ;->Ͳ:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Landroidx/emoji2/text/ˏ;->Ͱ:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    invoke-static {v2, v0, v1}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->ˋ(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

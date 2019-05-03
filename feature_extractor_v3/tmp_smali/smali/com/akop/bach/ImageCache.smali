.class public Lcom/akop/bach/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/ImageCache$Task;,
        Lcom/akop/bach/ImageCache$CachePolicy;,
        Lcom/akop/bach/ImageCache$Api8Helper;,
        Lcom/akop/bach/ImageCache$OnImageReadyListener;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:I = 0x3a98

.field private static inst:Lcom/akop/bach/ImageCache;


# instance fields
.field private mBusy:Z

.field private mCacheDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mCurrentTask:Lcom/akop/bach/ImageCache$Task;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/akop/bach/ImageCache$OnImageReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMsc:Landroid/media/MediaScannerConnection;

.field private mSdCacheDir:Ljava/io/File;

.field private mSdImageDir:Ljava/io/File;

.field private mTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/akop/bach/ImageCache$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/akop/bach/ImageCache;->inst:Lcom/akop/bach/ImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mContext:Landroid/content/Context;

    .line 191
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mTasks:Ljava/util/concurrent/BlockingQueue;

    .line 192
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mListeners:Ljava/util/HashSet;

    .line 193
    iput-object v3, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    .line 194
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mCacheDir:Ljava/io/File;

    .line 195
    iput-object v3, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    .line 196
    iput-object v3, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;

    .line 200
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 202
    new-instance v1, Lcom/akop/bach/ImageCache$Api8Helper;

    invoke-direct {v1, p0}, Lcom/akop/bach/ImageCache$Api8Helper;-><init>(Lcom/akop/bach/ImageCache;)V

    .line 204
    .local v1, "helper":Lcom/akop/bach/ImageCache$Api8Helper;
    invoke-virtual {v1}, Lcom/akop/bach/ImageCache$Api8Helper;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    .line 205
    invoke-virtual {v1}, Lcom/akop/bach/ImageCache$Api8Helper;->getExternalPictureDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "helper":Lcom/akop/bach/ImageCache$Api8Helper;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mThread:Ljava/lang/Thread;

    .line 223
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 224
    return-void

    .line 209
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/Android/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    .line 212
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/Android/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/files/Pictures"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/akop/bach/ImageCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/ImageCache;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akop/bach/ImageCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/ImageCache;)Landroid/media/MediaScannerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/ImageCache;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akop/bach/ImageCache;->mMsc:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method private getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;
    .locals 6
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cp"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v2, 0x0

    .line 300
    :goto_0
    return-object v2

    .line 293
    :cond_0
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 294
    .local v1, "protocolPos":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "filename":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/akop/bach/ImageCache$CachePolicy;->resize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/akop/bach/ImageCache;->getCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "\\W"

    const-string v5, "_"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "filename":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 294
    goto :goto_1
.end method

.method private getImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 334
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;

    if-nez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdImageDir:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/akop/bach/ImageCache;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/akop/bach/ImageCache;->inst:Lcom/akop/bach/ImageCache;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/akop/bach/ImageCache;

    invoke-direct {v0}, Lcom/akop/bach/ImageCache;-><init>()V

    sput-object v0, Lcom/akop/bach/ImageCache;->inst:Lcom/akop/bach/ImageCache;

    .line 231
    :cond_0
    sget-object v0, Lcom/akop/bach/ImageCache;->inst:Lcom/akop/bach/ImageCache;

    return-object v0
.end method

.method private loadBitmapSynchronous(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/ImageCache;->getBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/akop/bach/ImageCache;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public clearCachedBitmap(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/ImageCache;->clearCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)V

    .line 757
    return-void
.end method

.method public clearCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)V
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/ImageCache;->getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;

    move-result-object v0

    .line 763
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const-string v1, "Purging %s from cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 770
    :cond_1
    return-void
.end method

.method public clearDiskCache()V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/akop/bach/ImageCache;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 322
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadImage(Ljava/lang/String;)Ljava/io/File;
    .locals 18
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 644
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 645
    :cond_0
    const/4 v7, 0x0

    .line 751
    :cond_1
    :goto_0
    return-object v7

    .line 647
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/akop/bach/ImageCache;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 648
    .local v7, "file":Ljava/io/File;
    if-nez v7, :cond_3

    .line 649
    const/4 v7, 0x0

    goto :goto_0

    .line 657
    :cond_3
    :try_start_0
    new-instance v3, Lcom/akop/bach/util/IgnorantHttpClient;

    invoke-direct {v3}, Lcom/akop/bach/util/IgnorantHttpClient;-><init>()V

    .line 658
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 659
    .local v14, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 661
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-nez v5, :cond_4

    .line 662
    const/4 v7, 0x0

    goto :goto_0

    .line 664
    :cond_4
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 665
    .local v15, "stream":Ljava/io/InputStream;
    if-nez v15, :cond_5

    .line 666
    const/4 v7, 0x0

    goto :goto_0

    .line 670
    :cond_5
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    .local v11, "length":I
    if-gtz v11, :cond_7

    .line 671
    const/4 v7, 0x0

    .line 680
    .end local v7    # "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 681
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 684
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "length":I
    .end local v14    # "resp":Lorg/apache/http/HttpResponse;
    .end local v15    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 686
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 687
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 689
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .line 673
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v11    # "length":I
    .restart local v14    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v15    # "stream":Ljava/io/InputStream;
    :cond_7
    :try_start_3
    new-array v2, v11, [B

    .line 676
    .local v2, "blob":[B
    const/4 v13, 0x0

    .local v13, "r":I
    :goto_1
    if-ge v13, v11, :cond_8

    sub-int v16, v11, v13

    move/from16 v0, v16

    invoke-virtual {v15, v2, v13, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    add-int v13, v13, v16

    goto :goto_1

    .line 680
    :cond_8
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 681
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 694
    const/4 v9, 0x0

    .line 698
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 699
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v10, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 701
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 702
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Wrote to cache: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 711
    :cond_9
    if-eqz v10, :cond_d

    .line 715
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v9, v10

    .line 724
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_a
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 725
    .local v8, "filename":Ljava/lang/String;
    new-instance v12, Lcom/akop/bach/ImageCache$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v8}, Lcom/akop/bach/ImageCache$1;-><init>(Lcom/akop/bach/ImageCache;Ljava/lang/String;)V

    .line 742
    .local v12, "mscc":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    :try_start_8
    new-instance v16, Landroid/media/MediaScannerConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/ImageCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akop/bach/ImageCache;->mMsc:Landroid/media/MediaScannerConnection;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/ImageCache;->mMsc:Landroid/media/MediaScannerConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 745
    :catch_1
    move-exception v6

    .line 747
    .local v6, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 748
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 680
    .end local v2    # "blob":[B
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "length":I
    .end local v12    # "mscc":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .end local v13    # "r":I
    :catchall_0
    move-exception v16

    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 681
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v16
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 717
    .restart local v2    # "blob":[B
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "length":I
    .restart local v13    # "r":I
    :catch_2
    move-exception v16

    move-object v9, v10

    .line 719
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 704
    :catch_3
    move-exception v4

    .line 706
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_a
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 707
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 711
    :cond_b
    if-eqz v9, :cond_a

    .line 715
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .line 717
    :catch_4
    move-exception v16

    goto :goto_2

    .line 711
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    :goto_4
    if-eqz v9, :cond_c

    .line 715
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 719
    :cond_c
    :goto_5
    throw v16

    .line 717
    :catch_5
    move-exception v17

    goto :goto_5

    .line 711
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 704
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_d
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public getBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;
    .locals 30
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 360
    :cond_0
    const/16 v23, 0x0

    .line 508
    :cond_1
    :goto_0
    return-object v23

    .line 362
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/akop/bach/ImageCache;->getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;

    move-result-object v15

    .line 366
    .local v15, "file":Ljava/io/File;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->bypassCache:Z

    move/from16 v26, v0

    if-nez v26, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 368
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 369
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cache hit: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 373
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v28

    move-object/from16 v0, p2

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/ImageCache$CachePolicy;->expired(JJ)Z

    move-result v26

    if-nez v26, :cond_4

    .line 374
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    goto :goto_0

    .line 376
    :catch_0
    move-exception v13

    .line 378
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    const/16 v23, 0x0

    goto :goto_0

    .line 388
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    :try_start_1
    new-instance v12, Lcom/akop/bach/util/IgnorantHttpClient;

    invoke-direct {v12}, Lcom/akop/bach/util/IgnorantHttpClient;-><init>()V

    .line 390
    .local v12, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    .line 391
    .local v21, "params":Lorg/apache/http/params/HttpParams;
    const-string v26, "http.useragent"

    const-string v27, "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0;)"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 394
    const/16 v26, 0x3a98

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 395
    const/16 v26, 0x3a98

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 397
    new-instance v26, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 398
    .local v24, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 400
    .local v14, "entity":Lorg/apache/http/HttpEntity;
    if-nez v14, :cond_5

    .line 401
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 403
    :cond_5
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v25

    .line 404
    .local v25, "stream":Ljava/io/InputStream;
    if-nez v25, :cond_6

    .line 405
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 409
    :cond_6
    :try_start_2
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v18, v0

    .local v18, "length":I
    if-gtz v18, :cond_a

    .line 412
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 414
    .local v9, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1388

    .line 415
    .local v11, "chunkSize":I
    new-array v10, v11, [B

    .line 417
    .local v10, "chunk":[B
    const/16 v22, 0x0

    .local v22, "r":I
    :goto_1
    if-ltz v22, :cond_7

    .line 418
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v9, v10, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 417
    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v10, v1, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v22

    goto :goto_1

    .line 420
    :cond_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 433
    .end local v9    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "chunk":[B
    .end local v11    # "chunkSize":I
    .local v7, "blob":[B
    :cond_8
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 434
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 447
    const/16 v16, 0x0

    .line 451
    .local v16, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 453
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    move/from16 v26, v0

    if-gtz v26, :cond_9

    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    move/from16 v26, v0

    if-lez v26, :cond_e

    .line 455
    :cond_9
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 456
    .local v8, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v6, v26, v27

    .line 458
    .local v6, "aspectRatio":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    move/from16 v26, v0

    if-gtz v26, :cond_c

    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v6

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    .line 460
    .local v20, "newWidth":I
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    move/from16 v26, v0

    if-gtz v26, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v6

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 463
    .local v19, "newHeight":I
    :goto_3
    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 464
    .local v23, "resized":Landroid/graphics/Bitmap;
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 483
    if-eqz v17, :cond_1

    .line 487
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 489
    :catch_1
    move-exception v26

    goto/16 :goto_0

    .line 425
    .end local v6    # "aspectRatio":F
    .end local v7    # "blob":[B
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v19    # "newHeight":I
    .end local v20    # "newWidth":I
    .end local v22    # "r":I
    .end local v23    # "resized":Landroid/graphics/Bitmap;
    :cond_a
    :try_start_7
    move/from16 v0, v18

    new-array v7, v0, [B

    .line 428
    .restart local v7    # "blob":[B
    const/16 v22, 0x0

    .restart local v22    # "r":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    sub-int v26, v18, v22

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v26

    add-int v22, v22, v26

    goto :goto_4

    .line 433
    .end local v7    # "blob":[B
    .end local v18    # "length":I
    .end local v22    # "r":I
    :catchall_0
    move-exception v26

    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 434
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v26
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 437
    .end local v12    # "client":Lorg/apache/http/client/HttpClient;
    .end local v14    # "entity":Lorg/apache/http/HttpEntity;
    .end local v21    # "params":Lorg/apache/http/params/HttpParams;
    .end local v24    # "resp":Lorg/apache/http/HttpResponse;
    .end local v25    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v13

    .line 439
    .local v13, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 440
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 458
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v6    # "aspectRatio":F
    .restart local v7    # "blob":[B
    .restart local v8    # "bmp":Landroid/graphics/Bitmap;
    .restart local v12    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v14    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "length":I
    .restart local v21    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v22    # "r":I
    .restart local v24    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v25    # "stream":Ljava/io/InputStream;
    :cond_c
    :try_start_9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    move/from16 v20, v0

    goto :goto_2

    .line 460
    .restart local v20    # "newWidth":I
    :cond_d
    move-object/from16 v0, p2

    iget v0, v0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    move/from16 v19, v0

    goto :goto_3

    .line 470
    .end local v6    # "aspectRatio":F
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v20    # "newWidth":I
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 473
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 474
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Wrote to cache: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 483
    :cond_f
    if-eqz v17, :cond_14

    .line 487
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v16, v17

    .line 496
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :cond_10
    :goto_5
    const/4 v8, 0x0

    .line 500
    .restart local v8    # "bmp":Landroid/graphics/Bitmap;
    const/16 v26, 0x0

    :try_start_b
    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v8

    :cond_11
    :goto_6
    move-object/from16 v23, v8

    .line 508
    goto/16 :goto_0

    .line 489
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v26

    move-object/from16 v16, v17

    .line 491
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 476
    :catch_4
    move-exception v13

    .line 478
    .restart local v13    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_c
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_12

    .line 479
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 483
    :cond_12
    if-eqz v16, :cond_10

    .line 487
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_5

    .line 489
    :catch_5
    move-exception v26

    goto :goto_5

    .line 483
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v26

    :goto_8
    if-eqz v16, :cond_13

    .line 487
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 491
    :cond_13
    :goto_9
    throw v26

    .line 502
    .restart local v8    # "bmp":Landroid/graphics/Bitmap;
    :catch_6
    move-exception v13

    .line 504
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 505
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 489
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v27

    goto :goto_9

    .line 483
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v26

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 476
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v13

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :cond_14
    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "bypassCache"    # Z

    .prologue
    const/4 v0, -0x1

    .line 354
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/akop/bach/ImageCache;->getBitmap(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "bypassCache"    # Z
    .param p3, "resizeH"    # I
    .param p4, "resizeV"    # I

    .prologue
    .line 514
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/akop/bach/ImageCache;->getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;

    move-result-object v10

    .line 518
    .local v10, "file":Ljava/io/File;
    if-nez p2, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 520
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 521
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cache hit: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 523
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    .line 527
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 639
    :cond_1
    :goto_0
    return-object v17

    .line 529
    :catch_0
    move-exception v8

    .line 531
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const/16 v17, 0x0

    goto :goto_0

    .line 541
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_1
    new-instance v7, Lcom/akop/bach/util/IgnorantHttpClient;

    invoke-direct {v7}, Lcom/akop/bach/util/IgnorantHttpClient;-><init>()V

    .line 542
    .local v7, "client":Lorg/apache/http/client/HttpClient;
    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 543
    .local v18, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 545
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    if-nez v9, :cond_3

    .line 546
    const/16 v17, 0x0

    goto :goto_0

    .line 548
    :cond_3
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 549
    .local v19, "stream":Ljava/io/InputStream;
    if-nez v19, :cond_4

    .line 550
    const/16 v17, 0x0

    goto :goto_0

    .line 554
    :cond_4
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v13, v0

    .local v13, "length":I
    if-gtz v13, :cond_6

    .line 555
    const/16 v17, 0x0

    .line 564
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 565
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 568
    .end local v7    # "client":Lorg/apache/http/client/HttpClient;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "length":I
    .end local v18    # "resp":Lorg/apache/http/HttpResponse;
    .end local v19    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    .line 570
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 571
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    :cond_5
    const/16 v17, 0x0

    goto :goto_0

    .line 557
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v13    # "length":I
    .restart local v18    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v19    # "stream":Ljava/io/InputStream;
    :cond_6
    :try_start_4
    new-array v5, v13, [B

    .line 560
    .local v5, "blob":[B
    const/16 v16, 0x0

    .local v16, "r":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_7

    sub-int v20, v13, v16

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v20

    add-int v16, v16, v20

    goto :goto_1

    .line 564
    :cond_7
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 565
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 578
    const/4 v11, 0x0

    .line 582
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 584
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/16 v20, -0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    const/16 v20, -0x1

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 586
    :cond_8
    const/16 v20, 0x0

    :try_start_7
    move/from16 v0, v20

    invoke-static {v5, v0, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 587
    .local v6, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v4, v20, v21

    .line 589
    .local v4, "aspectRatio":F
    if-gez p3, :cond_9

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v15, v0

    .line 591
    .local v15, "newWidth":I
    :goto_2
    if-gez p4, :cond_a

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v14, v0

    .line 594
    .local v14, "newHeight":I
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v6, v15, v14, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 595
    .local v17, "resized":Landroid/graphics/Bitmap;
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 614
    if-eqz v12, :cond_1

    .line 618
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 620
    :catch_2
    move-exception v20

    goto/16 :goto_0

    .line 564
    .end local v4    # "aspectRatio":F
    .end local v5    # "blob":[B
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "length":I
    .end local v14    # "newHeight":I
    .end local v15    # "newWidth":I
    .end local v16    # "r":I
    .end local v17    # "resized":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v20

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 565
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v20
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .restart local v4    # "aspectRatio":F
    .restart local v5    # "blob":[B
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "length":I
    .restart local v16    # "r":I
    :cond_9
    move/from16 v15, p3

    .line 589
    goto :goto_2

    .restart local v15    # "newWidth":I
    :cond_a
    move/from16 v14, p4

    .line 591
    goto :goto_3

    .line 601
    .end local v4    # "aspectRatio":F
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v15    # "newWidth":I
    :cond_b
    :try_start_a
    invoke-virtual {v12, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 604
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 605
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Wrote to cache: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 614
    :cond_c
    if-eqz v12, :cond_11

    .line 618
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object v11, v12

    .line 627
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :cond_d
    :goto_4
    const/4 v6, 0x0

    .line 631
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    :try_start_c
    move/from16 v0, v20

    invoke-static {v5, v0, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v6

    :cond_e
    :goto_5
    move-object/from16 v17, v6

    .line 639
    goto/16 :goto_0

    .line 620
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v20

    move-object v11, v12

    .line 622
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 607
    :catch_4
    move-exception v8

    .line 609
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_d
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 610
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 614
    :cond_f
    if-eqz v11, :cond_d

    .line 618
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_4

    .line 620
    :catch_5
    move-exception v20

    goto :goto_4

    .line 614
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v20

    :goto_7
    if-eqz v11, :cond_10

    .line 618
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 622
    :cond_10
    :goto_8
    throw v20

    .line 633
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    :catch_6
    move-exception v8

    .line 635
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 636
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 620
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v21

    goto :goto_8

    .line 614
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v20

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 607
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v8

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :cond_11
    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public getCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/akop/bach/ImageCache;->mCacheDir:Ljava/io/File;

    .line 307
    .local v0, "cacheDir":Ljava/io/File;
    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/ImageCache;->mSdCacheDir:Ljava/io/File;

    .line 314
    :cond_1
    return-object v0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 801
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object v2

    .line 805
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/ImageCache;->getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;

    move-result-object v1

    .line 808
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 811
    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/akop/bach/ImageCache$CachePolicy;->expired(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 816
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0

    .line 822
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    const-string v3, "error decoding %s"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCachedOrRequest(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;ILjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .param p3, "id"    # I
    .param p4, "param"    # Ljava/lang/Object;
    .param p5, "cp"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    const/4 v8, 0x0

    .line 775
    invoke-virtual {p0, p1, v8}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 776
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 780
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 779
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-object v0, v8

    .line 780
    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/akop/bach/ImageCache;->mBusy:Z

    return v0
.end method

.method public isCached(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    const/4 v1, 0x0

    .line 836
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v1

    .line 839
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/ImageCache;->getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;

    move-result-object v0

    .line 842
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z
    .locals 6
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 790
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/ImageCache;->getCacheFile(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Ljava/io/File;

    move-result-object v0

    .line 793
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    const/4 v1, 0x1

    .line 796
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/akop/bach/ImageCache$CachePolicy;->expired(JJ)Z

    move-result v1

    goto :goto_0
.end method

.method public removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/akop/bach/ImageCache;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z
    .locals 9
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .param p3, "id"    # J
    .param p5, "param"    # Ljava/lang/Object;

    .prologue
    .line 858
    const/4 v7, 0x0

    new-instance v8, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v8}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v0

    return v0
.end method

.method public requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z
    .locals 9
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .param p3, "id"    # J
    .param p5, "param"    # Ljava/lang/Object;
    .param p6, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 865
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v0

    return v0
.end method

.method public requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Z)Z
    .locals 9
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .param p3, "id"    # J
    .param p5, "param"    # Ljava/lang/Object;
    .param p6, "bypassCache"    # Z

    .prologue
    .line 851
    const/4 v7, 0x0

    new-instance v8, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v8, p6}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    .locals 13
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .param p3, "id"    # J
    .param p5, "param"    # Ljava/lang/Object;
    .param p6, "alwaysRun"    # Z
    .param p7, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 873
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 874
    :cond_0
    const/4 v1, 0x0

    .line 912
    :goto_0
    monitor-exit p0

    return v1

    .line 877
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v1, v1, Lcom/akop/bach/ImageCache$Task;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v1, v1, Lcom/akop/bach/ImageCache$Task;->listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already in queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 883
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 886
    :cond_3
    iget-object v1, p0, Lcom/akop/bach/ImageCache;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/ImageCache$Task;

    .line 888
    .local v0, "command":Lcom/akop/bach/ImageCache$Task;
    iget-object v1, v0, Lcom/akop/bach/ImageCache$Task;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/akop/bach/ImageCache$Task;->listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 891
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already in queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 894
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 898
    .end local v0    # "command":Lcom/akop/bach/ImageCache$Task;
    :cond_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :cond_7
    :try_start_2
    iget-object v12, p0, Lcom/akop/bach/ImageCache;->mTasks:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/akop/bach/ImageCache$Task;

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object v7, p2

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/akop/bach/ImageCache$Task;-><init>(Lcom/akop/bach/ImageCache;Ljava/lang/String;JLjava/lang/Object;Lcom/akop/bach/ImageCache$OnImageReadyListener;ZLcom/akop/bach/ImageCache$CachePolicy;)V

    invoke-interface {v12, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 912
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 907
    :catch_0
    move-exception v11

    .line 909
    .local v11, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v11}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 873
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 247
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/ImageCache$Task;

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    .line 248
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-boolean v2, v2, Lcom/akop/bach/ImageCache$Task;->alwaysRun:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mListeners:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v3, v3, Lcom/akop/bach/ImageCache$Task;->listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/akop/bach/ImageCache;->mBusy:Z

    .line 254
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v2, v2, Lcom/akop/bach/ImageCache$Task;->imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v3, v3, Lcom/akop/bach/ImageCache$Task;->cachePol:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {p0, v2, v3}, Lcom/akop/bach/ImageCache;->loadBitmapSynchronous(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-boolean v2, v2, Lcom/akop/bach/ImageCache$Task;->alwaysRun:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mListeners:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v3, v3, Lcom/akop/bach/ImageCache$Task;->listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v2, v2, Lcom/akop/bach/ImageCache$Task;->listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    iget-object v3, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-wide v4, v3, Lcom/akop/bach/ImageCache$Task;->id:J

    iget-object v3, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;

    iget-object v3, v3, Lcom/akop/bach/ImageCache$Task;->param:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3, v0}, Lcom/akop/bach/ImageCache$OnImageReadyListener;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 262
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/akop/bach/ImageCache;->mCurrentTask:Lcom/akop/bach/ImageCache$Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/akop/bach/ImageCache;->mBusy:Z

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    const-string v2, "Error running task"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

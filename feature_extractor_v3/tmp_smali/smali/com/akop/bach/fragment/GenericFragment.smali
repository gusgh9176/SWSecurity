.class public abstract Lcom/akop/bach/fragment/GenericFragment;
.super Landroid/support/v4/app/Fragment;
.source "GenericFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/GenericFragment$1;,
        Lcom/akop/bach/fragment/GenericFragment$IconTask;,
        Lcom/akop/bach/fragment/GenericFragment$IconCursor2;,
        Lcom/akop/bach/fragment/GenericFragment$IconCursor;,
        Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;,
        Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    }
.end annotation


# static fields
.field protected static mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

.field protected static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field protected mDualPane:Z

.field protected mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-direct {v0}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;-><init>()V

    sput-object v0, Lcom/akop/bach/fragment/GenericFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    .line 79
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/fragment/GenericFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconCache:Ljava/util/HashMap;

    .line 205
    return-void
.end method


# virtual methods
.method protected closeIconCursor()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method protected getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v0}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    return-object v0
.end method

.method protected getFirstTitleId(Landroid/database/Cursor;)J
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v2, -0x1

    .line 263
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-wide v2

    .line 268
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 278
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected getIconColumns()[I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/akop/bach/fragment/GenericFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mDualPane:Z

    .line 221
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 213
    return-void
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 246
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 247
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 228
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 229
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$IconTask;->cancel(Z)Z

    .line 231
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 238
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 240
    invoke-virtual {p0}, Lcom/akop/bach/fragment/GenericFragment;->syncIcons()V

    .line 241
    return-void
.end method

.method protected syncIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;

    invoke-virtual {v0, v2}, Lcom/akop/bach/fragment/GenericFragment$IconTask;->cancel(Z)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 257
    new-instance v0, Lcom/akop/bach/fragment/GenericFragment$IconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/GenericFragment$IconTask;-><init>(Lcom/akop/bach/fragment/GenericFragment;Lcom/akop/bach/fragment/GenericFragment$1;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;

    .line 258
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment;->mIconTask:Lcom/akop/bach/fragment/GenericFragment$IconTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$IconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    return-void
.end method

.class public abstract Lcom/akop/bach/activity/ScrollingActivity;
.super Landroid/app/ListActivity;
.source "ScrollingActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;
    }
.end annotation


# static fields
.field protected static final PRELOAD_LIST_SIZE:I = 0xd


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mListLoaded:Z

.field protected mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mListLoaded:Z

    .line 143
    new-instance v0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;-><init>(Lcom/akop/bach/activity/ScrollingActivity;)V

    iput-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    return-void
.end method


# virtual methods
.method protected abstract getAdapterKeys()[Ljava/lang/String;
.end method

.method protected abstract getAdapterResourceIds()[I
.end method

.method protected abstract getIconUrlKey()Ljava/lang/String;
.end method

.method protected getImageHeight()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, -0x1

    return v0
.end method

.method protected getImageWidth()I
    .locals 1

    .prologue
    .line 309
    const/4 v0, -0x1

    return v0
.end method

.method protected getListCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getListItem(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getListItemLayoutResource()I
.end method

.method protected initializeList(Ljava/util/List;II)V
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->update(Ljava/util/List;II)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mListLoaded:Z

    .line 267
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/ScrollingActivity;->refreshIcons(Ljava/util/List;)V

    .line 268
    return-void
.end method

.method protected initializeWindowFeatures()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity;->requestWindowFeature(I)Z

    .line 198
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->initializeWindowFeatures()V

    .line 153
    iput-boolean v7, p0, Lcom/akop/bach/activity/ScrollingActivity;->mListLoaded:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mAdapterList:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mIconCache:Ljava/util/Map;

    .line 157
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/akop/bach/activity/ScrollingActivity;->mAdapterList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getListItemLayoutResource()I

    move-result v3

    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getAdapterKeys()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getAdapterResourceIds()[I

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 160
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 173
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    if-eqz p1, :cond_1

    const-string v0, "__list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "ScrollingActivity: Loading from state"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 181
    :cond_0
    const-string v0, "__list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 184
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v6, v7, v0}, Lcom/akop/bach/activity/ScrollingActivity;->initializeList(Ljava/util/List;II)V

    .line 193
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const-string v0, "ScrollingActivity: Initializing"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->rebind()V

    goto :goto_0
.end method

.method protected onDataUpdate()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->rebind()V

    .line 249
    return-void
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/ScrollingActivity;->mIconCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/akop/bach/activity/ScrollingActivity;->mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    invoke-virtual {v1}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->notifyChange()V

    .line 244
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 210
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    .line 211
    .local v0, "ic":Lcom/akop/bach/ImageCache;
    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 219
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    .line 220
    .local v0, "ic":Lcom/akop/bach/ImageCache;
    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 221
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-boolean v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mListLoaded:Z

    if-eqz v0, :cond_0

    .line 230
    const-string v1, "__list"

    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity;->mAdapterList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "ScrollingActivity: Saving state"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected rebind()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 272
    iput-boolean v6, p0, Lcom/akop/bach/activity/ScrollingActivity;->mListLoaded:Z

    .line 274
    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getListCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 275
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_1

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "i":I
    :goto_0
    const/16 v4, 0xd

    if-ge v1, v4, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity;->getListItem(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/akop/bach/activity/ScrollingActivity;->mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->update(Ljava/util/List;II)V

    .line 284
    move v3, v1

    .line 286
    .local v3, "start":I
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/akop/bach/activity/ScrollingActivity$1;

    invoke-direct {v5, p0, v0, v2, v3}, Lcom/akop/bach/activity/ScrollingActivity$1;-><init>(Lcom/akop/bach/activity/ScrollingActivity;Landroid/database/Cursor;Ljava/util/List;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 305
    .end local v1    # "i":I
    .end local v3    # "start":I
    :cond_1
    return-void
.end method

.method protected refreshIcons(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getImageWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v2, v3

    .line 323
    .local v2, "newImageWidth":I
    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/akop/bach/activity/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 325
    .local v1, "newImageHeight":I
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v0, v2, v1}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(II)V

    .line 327
    .local v0, "cp":Lcom/akop/bach/ImageCache$CachePolicy;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/akop/bach/activity/ScrollingActivity$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/akop/bach/activity/ScrollingActivity$2;-><init>(Lcom/akop/bach/activity/ScrollingActivity;Ljava/util/List;Lcom/akop/bach/ImageCache$CachePolicy;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method

.method protected setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "defaultImage"    # I

    .prologue
    .line 356
    if-nez p2, :cond_0

    .line 358
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/akop/bach/activity/ScrollingActivity;->mIconCache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 364
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 373
    :cond_1
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 376
    iget-object v2, p0, Lcom/akop/bach/activity/ScrollingActivity;->mIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected toggleProgressBar(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/ScrollingActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 203
    return-void
.end method

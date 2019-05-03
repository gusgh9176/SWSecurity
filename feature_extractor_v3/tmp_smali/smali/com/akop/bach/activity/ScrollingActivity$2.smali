.class Lcom/akop/bach/activity/ScrollingActivity$2;
.super Ljava/lang/Object;
.source "ScrollingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/ScrollingActivity;->refreshIcons(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/ScrollingActivity;

.field final synthetic val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/ScrollingActivity;Ljava/util/List;Lcom/akop/bach/ImageCache$CachePolicy;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iput-object p2, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 332
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 333
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v3, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    invoke-virtual {v3}, Lcom/akop/bach/activity/ScrollingActivity;->getIconUrlKey()Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "iconUrlKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 337
    .local v11, "listItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 340
    .local v9, "icon":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 341
    iget-object v3, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v3, v3, Lcom/akop/bach/activity/ScrollingActivity;->mIconCache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    const-wide/16 v4, 0x0

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_0

    .line 347
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v9    # "icon":Landroid/graphics/Bitmap;
    .end local v11    # "listItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lcom/akop/bach/activity/ScrollingActivity$2;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v3, v3, Lcom/akop/bach/activity/ScrollingActivity;->mUpdater:Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;

    invoke-virtual {v3}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->notifyChange()V

    .line 348
    return-void
.end method

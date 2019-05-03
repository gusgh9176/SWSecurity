.class Lcom/akop/bach/activity/playstation/SearchFriendsList$1;
.super Ljava/lang/Object;
.source "SearchFriendsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/playstation/SearchFriendsList;->loadIconsInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

.field final synthetic val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

.field final synthetic val$ic:Lcom/akop/bach/ImageCache;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/playstation/SearchFriendsList;Lcom/akop/bach/ImageCache;Lcom/akop/bach/ImageCache$CachePolicy;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    iput-object p2, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->val$ic:Lcom/akop/bach/ImageCache;

    iput-object p3, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 140
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    invoke-static {v1}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->access$000(Lcom/akop/bach/activity/playstation/SearchFriendsList;)Landroid/database/Cursor;

    move-result-object v9

    .line 142
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 148
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    invoke-virtual {v1}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_2
    return-void

    .line 153
    :cond_3
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    invoke-static {v1}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->access$100(Lcom/akop/bach/activity/playstation/SearchFriendsList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 157
    .local v0, "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->val$ic:Lcom/akop/bach/ImageCache;

    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 163
    .local v11, "icon":Landroid/graphics/Bitmap;
    if-nez v11, :cond_0

    .line 164
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->val$ic:Lcom/akop/bach/ImageCache;

    iget-object v3, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;->val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v6, v2

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v0    # "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v11    # "icon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 171
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 177
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.class Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;
.super Ljava/lang/Object;
.source "FriendCoverflow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->loadIconsInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

.field final synthetic val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

.field final synthetic val$ic:Lcom/akop/bach/ImageCache;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Lcom/akop/bach/ImageCache;Lcom/akop/bach/ImageCache$CachePolicy;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iput-object p2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->val$ic:Lcom/akop/bach/ImageCache;

    iput-object p3, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "IconUrl"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v4, v4, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 138
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 144
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_2
    return-void

    .line 149
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->access$000(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    .line 154
    .local v9, "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->val$ic:Lcom/akop/bach/ImageCache;

    invoke-virtual {v0, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 161
    .local v12, "icon":Landroid/graphics/Bitmap;
    if-nez v12, :cond_0

    .line 162
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->val$ic:Lcom/akop/bach/ImageCache;

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;->val$cp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v6, v2

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v9    # "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v12    # "icon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 171
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 177
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

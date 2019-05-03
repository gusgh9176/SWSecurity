.class Lcom/akop/bach/fragment/GenericFragment$IconTask;
.super Landroid/os/AsyncTask;
.source "GenericFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/GenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/GenericFragment;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/GenericFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/GenericFragment;Lcom/akop/bach/fragment/GenericFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/GenericFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/GenericFragment$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/GenericFragment$IconTask;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/akop/bach/fragment/GenericFragment$IconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 112
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment;->getIconColumns()[I

    move-result-object v11

    .line 113
    .local v11, "cursorIconColumns":[I
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment;->getIconCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 115
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 116
    const/4 v3, 0x0

    .line 194
    :goto_0
    return-object v3

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment;->getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v8

    .line 119
    .local v8, "cp":Lcom/akop/bach/ImageCache$CachePolicy;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 123
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    const/4 v14, -0x1

    .line 124
    .local v14, "n":I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    if-nez v11, :cond_1

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    .line 129
    new-array v11, v14, [I

    .line 131
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v14, :cond_2

    .line 132
    aput v13, v11, v13

    .line 131
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 136
    .end local v13    # "i":I
    :cond_1
    array-length v14, v11

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/akop/bach/fragment/GenericFragment$IconTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment;->closeIconCursor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_4
    :goto_3
    const/4 v3, 0x0

    goto :goto_0

    .line 144
    :cond_5
    const/4 v3, 0x0

    :try_start_1
    aget v3, v11, v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 145
    .local v4, "id":J
    const/4 v13, 0x1

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v14, :cond_a

    .line 147
    aget v3, v11, v13

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    iget-object v3, v3, Lcom/akop/bach/fragment/GenericFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    .line 151
    .local v9, "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 156
    :cond_6
    const-string v3, "http://tiles.xbox.com/consoleAssets/FFED0000/en-US/smallboxart.jpg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020081

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 145
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 168
    :cond_8
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 174
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    const/4 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 183
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v9    # "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v13    # "i":I
    :catch_0
    move-exception v12

    .line 185
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :cond_9
    iget-object v3, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment;->closeIconCursor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 180
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "id":J
    .restart local v13    # "i":I
    :cond_a
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 190
    .end local v4    # "id":J
    .end local v13    # "i":I
    :catchall_0
    move-exception v3

    iget-object v6, p0, Lcom/akop/bach/fragment/GenericFragment$IconTask;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v6}, Lcom/akop/bach/fragment/GenericFragment;->closeIconCursor()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 191
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3
.end method

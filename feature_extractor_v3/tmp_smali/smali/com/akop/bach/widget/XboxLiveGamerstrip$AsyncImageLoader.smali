.class Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;
.super Landroid/os/AsyncTask;
.source "XboxLiveGamerstrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/XboxLiveGamerstrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/widget/XboxLiveGamerstrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/widget/XboxLiveGamerstrip$1;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, [Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;->doInBackground([Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v2

    .line 228
    .local v2, "ic":Lcom/akop/bach/ImageCache;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v3, "outParams":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 232
    aget-object v4, p1, v1

    if-nez v4, :cond_0

    .line 230
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_0
    :try_start_0
    aget-object v4, p1, v1

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->imageUrl:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/akop/bach/ImageCache;->getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->bmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_2
    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    aget-object v4, p1, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->bmp:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;

    .line 256
    .local v1, "param":Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    iget-object v2, v1, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, v1, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->views:Landroid/widget/RemoteViews;

    iget v3, v1, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->resId:I

    iget-object v4, v1, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "param":Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    :cond_1
    return-void
.end method

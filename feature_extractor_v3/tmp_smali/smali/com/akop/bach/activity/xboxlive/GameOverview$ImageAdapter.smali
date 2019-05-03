.class public Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview;Landroid/content/Context;)V
    .locals 3
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 427
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->mContext:Landroid/content/Context;

    .line 430
    sget-object v1, Lcom/akop/bach/R$styleable;->ScreenshotGallery:[I

    invoke-virtual {p1, v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 431
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->mGalleryItemBackground:I

    .line 433
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 434
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 451
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 456
    new-instance v9, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 458
    .local v9, "i":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    .local v2, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 461
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 463
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 464
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$500(Lcom/akop/bach/activity/xboxlive/GameOverview;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 466
    .local v8, "cachedBmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 468
    :cond_0
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 470
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$500(Lcom/akop/bach/activity/xboxlive/GameOverview;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v1    # "ic":Lcom/akop/bach/ImageCache;
    .end local v8    # "cachedBmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v4}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$700(Lcom/akop/bach/activity/xboxlive/GameOverview;)I

    move-result v4

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v5}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$800(Lcom/akop/bach/activity/xboxlive/GameOverview;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 484
    iget v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->mGalleryItemBackground:I

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 486
    return-object v9

    .line 474
    .restart local v1    # "ic":Lcom/akop/bach/ImageCache;
    .restart local v8    # "cachedBmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v6}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$600(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_0
.end method

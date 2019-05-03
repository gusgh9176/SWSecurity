.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameCatalogDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 548
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 549
    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->mContext:Landroid/content/Context;

    .line 551
    sget-object v1, Lcom/akop/bach/R$styleable;->ScreenshotGallery:[I

    invoke-virtual {p2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 552
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->mGalleryItemBackground:I

    .line 554
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 560
    :cond_0
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 572
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 577
    new-instance v9, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 579
    .local v9, "i":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 581
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    aget-object v2, v3, p1

    .line 582
    .local v2, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 584
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 586
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 587
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 589
    .local v8, "cachedBmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 591
    :cond_0
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 593
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1300(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .end local v1    # "ic":Lcom/akop/bach/ImageCache;
    .end local v8    # "cachedBmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 604
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1600(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1700(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 607
    iget v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->mGalleryItemBackground:I

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 610
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    return-object v9

    .line 597
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "ic":Lcom/akop/bach/ImageCache;
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v8    # "cachedBmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_3
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1400(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/ImageCache$OnImageReadyListener;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v6}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1500(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_0
.end method

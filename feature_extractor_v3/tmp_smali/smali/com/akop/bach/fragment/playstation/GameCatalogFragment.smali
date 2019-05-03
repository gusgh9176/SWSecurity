.class public Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "GameCatalogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;,
        Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;,
        Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

.field private mCatalogFilter:Landroid/widget/TextView;

.field private mCatalogSort:Landroid/widget/TextView;

.field private mConsole:I

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

.field private mItemPos:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/akop/bach/PSN$GameCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFetchedPage:I

.field private mLastRequestedPage:I

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mLoadMore:Z

.field private mMessage:Landroid/widget/TextView;

.field private mProgress:Landroid/view/View;

.field private mReleaseStatus:I

.field private mSortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 79
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    .line 80
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    .line 82
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    .line 83
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mMessage:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mProgress:Landroid/view/View;

    .line 85
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogFilter:Landroid/widget/TextView;

    .line 88
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogSort:Landroid/widget/TextView;

    .line 94
    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    .line 95
    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    .line 98
    new-instance v0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    return v0
.end method

.method static synthetic access$1200(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    return v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->showFilterSelector()V

    return-void
.end method

.method static synthetic access$1600(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    return v0
.end method

.method static synthetic access$1900(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    return v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    return v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;Lcom/akop/bach/PSN$GameCatalogList;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
    .param p1, "x1"    # Lcom/akop/bach/PSN$GameCatalogList;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->appendToAdapter(Lcom/akop/bach/PSN$GameCatalogList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method private appendToAdapter(Lcom/akop/bach/PSN$GameCatalogList;)V
    .locals 12
    .param p1, "list"    # Lcom/akop/bach/PSN$GameCatalogList;

    .prologue
    .line 561
    monitor-enter p0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    :cond_0
    iget-object v1, p1, Lcom/akop/bach/PSN$GameCatalogList;->Items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/akop/bach/PSN$GameCatalogItem;

    .line 568
    .local v11, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :try_start_1
    iget-object v2, v11, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    .line 573
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 575
    .local v0, "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 577
    :cond_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    iget-object v3, v11, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v3, v4}, Lcom/akop/bach/ImageCache;->isCached(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 582
    .end local v0    # "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v2    # "iconUrl":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 584
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 599
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "item":Lcom/akop/bach/PSN$GameCatalogItem;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 589
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    iget-boolean v1, p1, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    iput-boolean v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    .line 593
    iget-boolean v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    if-eqz v1, :cond_4

    .line 594
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->notifyDataSetChanged()V

    .line 598
    iget v1, p1, Lcom/akop/bach/PSN$GameCatalogList;->PageNumber:I

    iput v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    .line 599
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->syncIcons()V

    .line 602
    return-void
.end method

.method private loadMore()V
    .locals 4

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    if-nez v0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synchronizeWithServer: [R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; F: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 654
    :cond_2
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    .line 661
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    new-instance v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 298
    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;-><init>()V

    .line 300
    .local v1, "f":Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 304
    return-object v1
.end method

.method private notifyItemSelected(Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 2
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;

    .line 548
    .local v0, "listener":Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;
    invoke-interface {v0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;->onItemSelected(Lcom/akop/bach/PSN$GameCatalogItem;)V

    .line 550
    .end local v0    # "listener":Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;
    :cond_0
    return-void
.end method

.method private showFilterSelector()V
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    move-result-object v0

    .line 555
    .local v0, "frag":Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->setOnOkListener(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;)V

    .line 556
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private synchronizeLocal()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 606
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogFilter:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    if-nez v2, :cond_4

    .line 611
    const v2, 0x7f08004d

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->supportsFilteringByReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    if-nez v2, :cond_8

    .line 624
    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogFilter:Landroid/widget/TextView;

    const v3, 0x7f080031

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ", "

    invoke-static {v0, v6}, Lcom/akop/bach/parser/Parser;->joinString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    .end local v0    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogSort:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 635
    const-string v1, ""

    .line 636
    .local v1, "sortOrder":Ljava/lang/String;
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    if-ne v2, v7, :cond_9

    .line 637
    const v2, 0x7f080036

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogSort:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .end local v1    # "sortOrder":Ljava/lang/String;
    :cond_3
    return-void

    .line 612
    .restart local v0    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 613
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :cond_5
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 615
    const v2, 0x7f08004e

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_6
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    if-ne v2, v7, :cond_7

    .line 617
    const v2, 0x7f08004f

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_7
    const v2, 0x7f080050

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_8
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    if-ne v2, v7, :cond_0

    .line 626
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 638
    .end local v0    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v1    # "sortOrder":Ljava/lang/String;
    :cond_9
    iget v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    if-nez v2, :cond_2

    .line 639
    const v2, 0x7f080035

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private synchronizeWithServer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 686
    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    .line 687
    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    .line 690
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->notifyDataSetChanged()V

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->notifyItemSelected(Lcom/akop/bach/PSN$GameCatalogItem;)V

    .line 694
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->loadMore()V

    .line 695
    return-void
.end method


# virtual methods
.method public okClicked(III)V
    .locals 3
    .param p1, "console"    # I
    .param p2, "releaseStatusFilter"    # I
    .param p3, "sortFilter"    # I

    .prologue
    const/4 v2, -0x1

    .line 700
    iput p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    .line 701
    iput p2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    .line 702
    iput p3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    .line 703
    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    .line 704
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 706
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 708
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->synchronizeLocal()V

    .line 709
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->synchronizeWithServer()V

    .line 710
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 408
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 410
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 475
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PSN$GameCatalogItem;

    .line 477
    .local v1, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 487
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 480
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->addReminder(Landroid/content/Context;Lcom/akop/bach/PSN$GameCatalogItem;)V

    goto :goto_0

    .line 483
    :pswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->openSite(Landroid/content/Context;Lcom/akop/bach/PSN$GameCatalogItem;)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b010d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 311
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    new-instance v2, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v2}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 314
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v3, 0x60

    iput v3, v2, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 316
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/PsnAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 319
    iput v5, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    .line 321
    iput v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    .line 322
    iput v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    .line 323
    iput-boolean v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    .line 325
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getCatalogConsole()I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    .line 326
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getCatalogSortOrder()I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    .line 327
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getCatalogReleaseStatus()I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    .line 329
    iput-object v7, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    .line 331
    if-eqz p1, :cond_0

    .line 333
    const-string v2, "sortOrder"

    iget v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    .line 334
    const-string v2, "releaseStatus"

    iget v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    .line 335
    const-string v2, "console"

    iget v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    .line 339
    :try_start_0
    const-string v2, "itemPos"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    .line 340
    const-string v2, "reqedPage"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    .line 341
    const-string v2, "fetchPage"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    .line 342
    const-string v2, "loadMore"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    .line 343
    const-string v2, "items"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    .line 358
    :cond_1
    new-instance v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;Ljava/util/List;)V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    .line 360
    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->setHasOptionsMenu(Z)V

    .line 361
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    :cond_2
    iput-object v7, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    .line 351
    iput v5, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 458
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 459
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PSN$GameCatalogItem;

    .line 461
    .local v1, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    iget-object v2, v1, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 463
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 466
    const v2, 0x7f0b010c

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->isRemindable(Lcom/akop/bach/PSN$GameCatalogItem;)Z

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 468
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 431
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 433
    const v0, 0x7f0a0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 434
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 367
    if-nez p2, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 400
    :goto_0
    return-object v1

    .line 370
    :cond_0
    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 373
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mMessage:Landroid/widget/TextView;

    .line 374
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f0800d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 376
    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    .line 377
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 379
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 382
    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogFilter:Landroid/widget/TextView;

    .line 383
    const v2, 0x7f0b0060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mCatalogSort:Landroid/widget/TextView;

    .line 385
    const v2, 0x7f0b005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, "filterButton":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 388
    new-instance v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    :cond_1
    const v2, 0x7f0b0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 521
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 523
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$3;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 531
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    .line 537
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 539
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    invoke-virtual {v1, p3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/PSN$GameCatalogItem;

    .line 540
    .local v0, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    invoke-direct {p0, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->notifyItemSelected(Lcom/akop/bach/PSN$GameCatalogItem;)V

    .line 541
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 439
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 449
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 442
    :sswitch_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->synchronizeWithServer()V

    goto :goto_0

    .line 445
    :sswitch_1
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->showFilterSelector()V

    goto :goto_0

    .line 439
    :sswitch_data_0
    .sparse-switch
        0x7f0b0106 -> :sswitch_0
        0x7f0b010f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 495
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 496
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 497
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 502
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 504
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 505
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 507
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->synchronizeLocal()V

    .line 509
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 510
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->synchronizeWithServer()V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    if-le v0, v1, :cond_0

    .line 513
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    .line 514
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->loadMore()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 417
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v0, "releaseStatus"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mReleaseStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v0, "console"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mConsole:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v0, "itemPos"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItemPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v0, "reqedPage"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastRequestedPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v0, "fetchPage"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLastFetchedPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v0, "loadMore"

    iget-boolean v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mLoadMore:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    const-string v0, "items"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 426
    return-void
.end method

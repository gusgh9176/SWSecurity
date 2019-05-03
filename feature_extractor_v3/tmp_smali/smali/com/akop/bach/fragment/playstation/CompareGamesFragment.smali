.class public Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "CompareGamesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;,
        Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;
    }
.end annotation


# static fields
.field private static final ICON_MINE:I = 0x0

.field private static final ICON_YOURS:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

.field private mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field private mGamertag:Ljava/lang/String;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mMyGamerpic:Landroid/graphics/Bitmap;

.field private mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

.field private mProgress:Landroid/view/View;

.field private mTitleId:J

.field private mYourGamerpic:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 71
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    .line 72
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 74
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mTitleId:J

    .line 77
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    .line 78
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    .line 79
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mProgress:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 109
    new-instance v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    const-string v1, "PsnCompareGames"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$102(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Lcom/akop/bach/PSN$ComparedGameInfo;)Lcom/akop/bach/PSN$ComparedGameInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
    .param p1, "x1"    # Lcom/akop/bach/PSN$ComparedGameInfo;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->initializeAdapter()V

    return-void
.end method

.method private initializeAdapter()V
    .locals 6

    .prologue
    .line 538
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v2, v3, Lcom/akop/bach/PSN$ComparedGameInfo;->cursor:Lcom/akop/bach/PSN$ComparedGameCursor;

    .line 543
    .local v2, "payloadCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-direct {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .local v1, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 561
    new-instance v3, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    .line 562
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 564
    .end local v1    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    .end local v2    # "payloadCursor":Landroid/database/Cursor;
    :cond_1
    monitor-exit p0

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;-><init>()V

    .line 318
    .local v1, "f":Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 323
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 571
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 572
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v0, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v2, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v0, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v2, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->syncIcons()V

    .line 588
    return-void
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamertag:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->compareGames(Lcom/akop/bach/SupportsCompareGames;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 596
    return-void
.end method


# virtual methods
.method protected getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 398
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 329
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 331
    new-instance v2, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v2}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 332
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v3, 0x60

    iput v3, v2, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 334
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 336
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/PsnAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 337
    const-string v2, "gamertag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamertag:Ljava/lang/String;

    .line 338
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 339
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    .line 340
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    .line 341
    iput-wide v6, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mTitleId:J

    .line 343
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    .line 344
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    .line 346
    if-eqz p1, :cond_1

    .line 350
    :try_start_0
    const-string v2, "titleId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mTitleId:J

    .line 352
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/PSN$ComparedGameInfo;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    .line 355
    :cond_0
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->setHasOptionsMenu(Z)V

    .line 367
    return-void

    .line 358
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    iput-wide v6, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mTitleId:J

    .line 361
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    .line 362
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 423
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 425
    const v0, 0x7f0a000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 426
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 373
    if-nez p2, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    .line 376
    :cond_0
    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    .line 380
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 382
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    .line 383
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 386
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->initializeAdapter()V

    .line 388
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 467
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 469
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;J)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 481
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 486
    iput-wide p4, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mTitleId:J

    .line 487
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 489
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;

    if-eqz v3, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;

    .line 492
    .local v2, "listener":Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 494
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 496
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v1, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xf

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    iget-object v3, v3, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;->onGameSelected(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 534
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "listener":Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 434
    :pswitch_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->synchronizeWithServer()V

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 444
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 446
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 447
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 448
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 455
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 456
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 458
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->synchronizeLocal()V

    .line 460
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->synchronizeWithServer()V

    .line 462
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 407
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_1

    .line 409
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    const-string v0, "gamertag"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mGamertag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 413
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "payload"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedGameInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 418
    :cond_1
    return-void
.end method

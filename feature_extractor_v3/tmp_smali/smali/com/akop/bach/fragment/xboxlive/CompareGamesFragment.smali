.class public Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "CompareGamesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;,
        Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$OnGameSelectedListener;
    }
.end annotation


# static fields
.field private static final ICON_MINE:I = 0x0

.field private static final ICON_YOURS:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

.field private mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field private mGamertag:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mMyGamerpic:Landroid/graphics/Bitmap;

.field private mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

.field private mProgress:Landroid/view/View;

.field private mTitleId:J

.field private mYourGamerpic:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    .line 75
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mTitleId:J

    .line 81
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    .line 82
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    .line 83
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mProgress:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 113
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    const-string v1, "XboxCompareGames"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Lcom/akop/bach/XboxLive$ComparedGameInfo;)Lcom/akop/bach/XboxLive$ComparedGameInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$ComparedGameInfo;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->initializeAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->synchronizeLocal()V

    return-void
.end method

.method private initializeAdapter()V
    .locals 6

    .prologue
    .line 487
    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    if-eqz v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v2, v3, Lcom/akop/bach/XboxLive$ComparedGameInfo;->cursor:Lcom/akop/bach/XboxLive$ComparedGameCursor;

    .line 492
    .local v2, "payloadCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-direct {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    .local v1, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 510
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    .line 511
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    .end local v1    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    .end local v2    # "payloadCursor":Landroid/database/Cursor;
    :cond_1
    monitor-exit p0

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;-><init>()V

    .line 254
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 259
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 520
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 521
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v2, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v0, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v2, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->syncIcons()V

    .line 537
    return-void
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamertag:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->compareGames(Lcom/akop/bach/SupportsCompareGames;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 545
    return-void
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 333
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 470
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;

    .line 474
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 482
    .end local v1    # "vh":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 477
    .restart local v1    # "vh":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->gameUrl:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/akop/bach/activity/xboxlive/GameOverview;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 478
    const/4 v2, 0x1

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0114
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 269
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLiveAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 270
    const-string v2, "gamertag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamertag:Ljava/lang/String;

    .line 271
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 272
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    .line 273
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    .line 274
    iput-wide v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mTitleId:J

    .line 276
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    .line 277
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    .line 279
    if-eqz p1, :cond_1

    .line 283
    :try_start_0
    const-string v2, "titleId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mTitleId:J

    .line 285
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    .line 288
    :cond_0
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->setHasOptionsMenu(Z)V

    .line 300
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    iput-wide v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mTitleId:J

    .line 294
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    .line 295
    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 455
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 456
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;

    .line 458
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 460
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 462
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 358
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 360
    const v0, 0x7f0a0017

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    if-nez p2, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    .line 313
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 315
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    .line 316
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 319
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->initializeAdapter()V

    .line 321
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 323
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 404
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
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

    .line 421
    iput-wide p4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mTitleId:J

    .line 422
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 424
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$OnGameSelectedListener;

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$OnGameSelectedListener;

    .line 427
    .local v2, "listener":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$OnGameSelectedListener;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 429
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 431
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v1, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    iget-object v3, v3, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$OnGameSelectedListener;->onGameSelected(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 447
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "listener":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$OnGameSelectedListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 373
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 369
    :pswitch_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->synchronizeWithServer()V

    .line 370
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 381
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 382
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 383
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 390
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 391
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 393
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->synchronizeLocal()V

    .line 395
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->synchronizeWithServer()V

    .line 397
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 342
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    const-string v0, "gamertag"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mGamertag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 348
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "payload"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedGameInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 353
    :cond_1
    return-void
.end method

.class public Lcom/akop/bach/fragment/playstation/FriendsFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/playstation/FriendsFragment$OnFriendSelectedListener;,
        Lcom/akop/bach/fragment/playstation/FriendsFragment$RequestInformation;,
        Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final COLUMN_CURRENT_ACTIVITY:I = 0x8

.field private static final COLUMN_ICON_URL:I = 0x9

.field private static final COLUMN_IS_FAVORITE:I = 0xa

.field private static final COLUMN_LEVEL:I = 0x2

.field private static final COLUMN_MEMBER_TYPE:I = 0xb

.field private static final COLUMN_ONLINE_ID:I = 0x1

.field private static final COLUMN_ONLINE_STATUS:I = 0x3

.field private static final COLUMN_TROPHIES_BRONZE:I = 0x4

.field private static final COLUMN_TROPHIES_GOLD:I = 0x6

.field private static final COLUMN_TROPHIES_PLATINUM:I = 0x7

.field private static final COLUMN_TROPHIES_SILVER:I = 0x5

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Lcom/akop/bach/SectionedAdapter;

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/view/View;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OnlineId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Level"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "BronzeTrophies"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SilverTrophies"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GoldTrophies"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PlatinumTrophies"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Playing"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IsFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MemberType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    .line 80
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mMessage:Landroid/widget/TextView;

    .line 81
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mProgress:Landroid/view/View;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mTitleId:J

    .line 83
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 85
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 86
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 131
    new-instance v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/FriendsFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 166
    new-instance v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$2;

    const-string v1, "PsnFriends"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/FriendsFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->updateLastUpdateTime()V

    return-void
.end method

.method static synthetic access$100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/playstation/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->syncIcons()V

    return-void
.end method

.method static synthetic access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/FriendsFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 329
    new-instance v1, Lcom/akop/bach/fragment/playstation/FriendsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/FriendsFragment;-><init>()V

    .line 331
    .local v1, "f":Lcom/akop/bach/fragment/playstation/FriendsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 333
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 335
    return-object v1
.end method

.method private synchronizeWithServer()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 530
    return-void
.end method

.method private updateLastUpdateTime()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 500
    .local v9, "lastUpdated":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 503
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 505
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getLastFriendUpdate()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 507
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "lastUpdateText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .end local v0    # "lastUpdateText":Ljava/lang/String;
    .end local v9    # "lastUpdated":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 511
    .restart local v9    # "lastUpdated":Landroid/widget/TextView;
    :cond_1
    const v10, 0x7f0800ae

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getLastFriendUpdate()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0x240c8400

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-virtual {p0, v10, v11}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "lastUpdateText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 488
    :goto_0
    return-object v4

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "IconUrl"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Status ASC,OnlineId COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 433
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 615
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 617
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v0, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 619
    .local v0, "friend":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 626
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 622
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v4, v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mOnlineId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/akop/bach/activity/playstation/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V

    .line 623
    const/4 v2, 0x1

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b010b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 341
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 343
    new-instance v1, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v1}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 344
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v2, 0x60

    iput v2, v1, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 346
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 349
    .local v6, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "account"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 352
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v4}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Status ASC,OnlineId COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getFirstTitleId(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mTitleId:J

    .line 358
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 361
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mTitleId:J

    .line 364
    :cond_1
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->setHasOptionsMenu(Z)V

    .line 365
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 601
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 603
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 605
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;

    .line 606
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->onlineId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 608
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 610
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 564
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 566
    const v0, 0x7f0a0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 567
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    if-nez p2, :cond_0

    .line 372
    const/4 v7, 0x0

    .line 425
    :goto_0
    return-object v7

    .line 374
    :cond_0
    const v0, 0x7f030015

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 377
    .local v7, "layout":Landroid/view/View;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "query":Ljava/lang/String;
    new-instance v6, Lcom/akop/bach/SectionedAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-direct {v6, v0, v1}, Lcom/akop/bach/SectionedAdapter;-><init>(Landroid/content/Context;I)V

    .line 381
    .local v6, "adapter":Lcom/akop/bach/SectionedAdapter;
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/fragment/playstation/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Status ASC,OnlineId COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, p0, v11, v6, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v6, v9, v10}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 390
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/fragment/playstation/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Status ASC,OnlineId COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, p0, v11, v6, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v6, v9, v10}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 399
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/fragment/playstation/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Status ASC,OnlineId COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, p0, v11, v6, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v6, v9, v10}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 411
    iput-object v6, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 413
    const v0, 0x7f0b003c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mMessage:Landroid/widget/TextView;

    .line 414
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    const v0, 0x7f0b0061

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    .line 417
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 419
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 421
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 423
    const v0, 0x7f0b0062

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mProgress:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 468
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 473
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 454
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 456
    .local v0, "item":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    iget-wide v2, v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mFriendId:J

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mTitleId:J

    .line 457
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 459
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$OnFriendSelectedListener;

    .line 460
    .local v1, "listener":Lcom/akop/bach/fragment/playstation/FriendsFragment$OnFriendSelectedListener;
    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mTitleId:J

    invoke-interface {v1, v2, v3}, Lcom/akop/bach/fragment/playstation/FriendsFragment$OnFriendSelectedListener;->onFriendSelected(J)V

    .line 461
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 581
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 575
    :sswitch_0
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 576
    const/4 v0, 0x1

    goto :goto_0

    .line 578
    :sswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0

    .line 572
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0106 -> :sswitch_0
        0x7f0b010a -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 535
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 537
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 539
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 540
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 541
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 546
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 548
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 550
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->updateLastUpdateTime()V

    .line 552
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/service/PsnServiceClient;->clearFriendNotifications(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)V

    .line 554
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 555
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getLastFriendUpdate()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getFriendRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->synchronizeWithServer()V

    .line 559
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 444
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 447
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 449
    :cond_0
    return-void
.end method

.method public starClicked(JZ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "isSet"    # Z

    .prologue
    const/4 v5, 0x0

    .line 587
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 588
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "IsFavorite"

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 593
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 595
    return-void

    .line 588
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

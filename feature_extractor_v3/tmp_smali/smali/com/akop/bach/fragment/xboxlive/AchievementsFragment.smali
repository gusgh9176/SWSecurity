.class public Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "AchievementsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACH_ACQUIRED:I = 0x4

.field private static final ACH_DESCRIPTION:I = 0x2

.field private static final ACH_ICON_URL:I = 0x6

.field private static final ACH_LOCKED:I = 0x5

.field private static final ACH_POINTS:I = 0x3

.field private static final ACH_PROJ:[Ljava/lang/String;

.field private static final ACH_TITLE:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mGameTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Landroid/widget/TextView;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/view/View;

.field private mShowGameTotals:Z

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Points"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Acquired"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Locked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->ACH_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 133
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;

    const-string v1, "GameBeacon"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 152
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    const-string v1, "XBoxAchievements"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 277
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$4;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mHandler:Landroid/os/Handler;

    .line 308
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    .line 310
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 311
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    .line 312
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mMessage:Landroid/widget/TextView;

    .line 313
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mProgress:Landroid/view/View;

    .line 314
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mGameTitle:Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mShowGameTotals:Z

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->ACH_PROJ:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->loadGameDetails()V

    return-void
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->synchronizeWithServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->syncIcons()V

    return-void
.end method

.method private loadGameDetails()V
    .locals 18

    .prologue
    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getView()Landroid/view/View;

    move-result-object v17

    .line 612
    .local v17, "view":Landroid/view/View;
    if-nez v17, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    .line 617
    const v5, 0x7f0b0057

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 618
    const v5, 0x7f0b006f

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mShowGameTotals:Z

    if-eqz v5, :cond_0

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    .line 630
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 631
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->PROJ:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 634
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 638
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 643
    const v5, 0x7f0b00e0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;

    .line 644
    .local v14, "gameListItem":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    const/16 v5, 0x9

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v14, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mBeaconSet:Z

    .line 645
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    iput-wide v6, v14, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mItemId:J

    .line 647
    const v5, 0x7f0b001d

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .local v16, "tv":Landroid/widget/TextView;
    if-eqz v16, :cond_2

    .line 648
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :cond_2
    const v5, 0x7f0b00e2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "tv":Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16    # "tv":Landroid/widget/TextView;
    if-eqz v16, :cond_3

    .line 651
    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v13, v6, v7}, Lcom/akop/bach/XboxLive$Games;->getLastPlayedText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_3
    const v5, 0x7f0b00e1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "tv":Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16    # "tv":Landroid/widget/TextView;
    if-eqz v16, :cond_4

    .line 655
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v13, v5, v6}, Lcom/akop/bach/XboxLive$Games;->getAchievementTotalText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :cond_4
    const v5, 0x7f0b00e3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "tv":Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16    # "tv":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 660
    const/4 v5, 0x5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v13, v5, v6}, Lcom/akop/bach/XboxLive$Games;->getGamerscoreTotalText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_5
    const v5, 0x7f0b00e4

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 665
    .local v15, "iv":Landroid/widget/ImageView;
    const/16 v5, 0x9

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f020008

    :goto_3
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 668
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 669
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    const/4 v5, 0x7

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "iconUrl":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, "bmp":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_a

    .line 674
    const v5, 0x7f0b001c

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15    # "iv":Landroid/widget/ImageView;
    check-cast v15, Landroid/widget/ImageView;

    .line 675
    .restart local v15    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v14    # "gameListItem":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    .end local v15    # "iv":Landroid/widget/ImageView;
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_6
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 622
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "context":Landroid/content/Context;
    :cond_7
    const v5, 0x7f0b0057

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 623
    const v5, 0x7f0b006f

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 644
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "context":Landroid/content/Context;
    .restart local v14    # "gameListItem":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 665
    .restart local v15    # "iv":Landroid/widget/ImageView;
    .restart local v16    # "tv":Landroid/widget/TextView;
    :cond_9
    const v5, 0x7f020007

    goto :goto_3

    .line 679
    .restart local v3    # "ic":Lcom/akop/bach/ImageCache;
    .restart local v4    # "iconUrl":Ljava/lang/String;
    .restart local v11    # "bmp":Landroid/graphics/Bitmap;
    :cond_a
    if-eqz v4, :cond_6

    .line 681
    :try_start_1
    new-instance v5, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 703
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v14    # "gameListItem":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    .end local v15    # "iv":Landroid/widget/ImageView;
    .end local v16    # "tv":Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;JZ)Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "titleId"    # J
    .param p3, "showGameTotals"    # Z

    .prologue
    .line 326
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;-><init>()V

    .line 328
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 331
    const-string v2, "showGameTotals"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 334
    return-object v1
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;Z)Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
    .locals 2
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "showGameTotals"    # Z

    .prologue
    .line 320
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1, p1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;JZ)Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    move-result-object v0

    return-object v0
.end method

.method private showAchievementDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 535
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03002a

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f0b008b

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0b00a9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 539
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const v4, 0x7f0b00ab

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 541
    .restart local v2    # "text":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 544
    .local v3, "toast":Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 545
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 547
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 548
    return-void
.end method

.method private synchronizeLocal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v10, v4, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 554
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-ltz v1, :cond_3

    .line 556
    const/4 v7, 0x0

    .line 557
    .local v7, "exists":Z
    const/4 v8, 0x0

    .line 559
    .local v8, "isDirty":Z
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 560
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Title"

    aput-object v3, v2, v10

    const-string v3, "AchievementsStatus"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 565
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 569
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v8, v9

    .line 572
    :goto_0
    const/4 v7, 0x1

    .line 573
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mGameTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_1
    if-eqz v8, :cond_2

    .line 583
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->synchronizeWithServer()V

    .line 585
    :cond_2
    if-nez v7, :cond_3

    .line 586
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    .line 589
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "exists":Z
    .end local v8    # "isDirty":Z
    :cond_3
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->loadGameDetails()V

    .line 590
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "exists":Z
    .restart local v8    # "isDirty":Z
    :cond_4
    move v8, v10

    .line 571
    goto :goto_0

    .line 578
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 594
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->synchronizeAchievements(Lcom/akop/bach/SupportsAchievements;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 599
    return-void
.end method


# virtual methods
.method public beaconClicked(JZ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "isSet"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 711
    if-eqz p3, :cond_0

    .line 715
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$7;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;J)V

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 776
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/XboxLive$Games;->getSetBeaconCount(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)I

    move-result v1

    if-lt v1, v5, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080142

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 747
    :cond_1
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->newInstance()Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    move-result-object v0

    .line 748
    .local v0, "prompt":Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;J)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->setOnOkListener(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;)V

    .line 774
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 526
    :goto_0
    return-object v4

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 526
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

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

    const-string v5, "GameId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ListIndex ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 418
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 419
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 448
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 451
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mGameTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;

    if-eqz v4, :cond_0

    .line 453
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;

    .line 455
    .local v2, "vh":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 467
    .end local v2    # "vh":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 458
    .restart local v2    # "vh":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, "searchIntent":Landroid/content/Intent;
    const-string v4, "query"

    const v5, 0x7f08009f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mGameTitle:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v7, v2, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x7f0b0113
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 342
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 346
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 347
    const-string v1, "titleId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    .line 350
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 352
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 353
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    .line 356
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->setHasOptionsMenu(Z)V

    .line 357
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 434
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 436
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 438
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;

    .line 439
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 441
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 443
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 363
    if-nez p2, :cond_0

    move-object v1, v5

    .line 410
    :goto_0
    return-object v1

    .line 366
    :cond_0
    const v6, 0x7f030032

    invoke-virtual {p1, v6, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 369
    .local v1, "layout":Landroid/view/View;
    iput-boolean v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mShowGameTotals:Z

    .line 370
    const v6, 0x7f0b0063

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "gameDetails":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "showGameTotals"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mShowGameTotals:Z

    .line 376
    iget-boolean v6, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mShowGameTotals:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;

    invoke-direct {v3, p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-boolean v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mShowGameTotals:Z

    if-eqz v3, :cond_1

    .line 390
    const v3, 0x7f0b00e0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;

    .line 391
    .local v2, "view":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    iput-object p0, v2, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    .line 395
    .end local v2    # "view":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    :cond_1
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, p0, v6, v5}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 397
    const v3, 0x7f0b003c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mMessage:Landroid/widget/TextView;

    .line 398
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mMessage:Landroid/widget/TextView;

    const v5, 0x7f0800d6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 400
    const v3, 0x7f0b0062

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mProgress:Landroid/view/View;

    .line 401
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const v3, 0x7f0b0061

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    .line 404
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 405
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 408
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 376
    goto :goto_1
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 501
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 503
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .line 509
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 510
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 512
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "description":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->showAchievementDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 517
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 473
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 475
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 476
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 478
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 479
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 480
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 485
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 487
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 488
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 490
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 493
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->synchronizeLocal()V

    .line 494
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 427
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 428
    return-void
.end method

.method public resetTitle(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 603
    iput-wide p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->mTitleId:J

    .line 605
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->synchronizeLocal()V

    .line 606
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->syncIcons()V

    .line 607
    return-void
.end method

.class public Lcom/akop/bach/fragment/xboxlive/GamesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "GamesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;,
        Lcom/akop/bach/fragment/xboxlive/GamesFragment$OnGameSelectedListener;
    }
.end annotation


# static fields
.field public static final GAME_ACH_EARNED:I = 0x3

.field public static final GAME_ACH_TOTAL:I = 0x4

.field public static final GAME_BEACON_SET:I = 0x9

.field public static final GAME_BEACON_TEXT:I = 0xa

.field public static final GAME_GP_EARNED:I = 0x5

.field public static final GAME_GP_TOTAL:I = 0x6

.field public static final GAME_ICON_URL:I = 0x7

.field public static final GAME_LAST_PLAYED:I = 0x2

.field public static final GAME_TITLE:I = 0x1

.field public static final GAME_URL:I = 0x8

.field public static final PROJ:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

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

.field private mProgress:Landroid/view/View;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LastPlayed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AchievementsUnlocked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AchievementsTotal"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PointsAcquired"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PointsTotal"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BoxartUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GameUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BeaconSet"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BeaconText"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 123
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;

    const-string v1, "GameBeacon"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 145
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$2;

    const-string v1, "XBoxGames"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 269
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mHandler:Landroid/os/Handler;

    .line 305
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 306
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    .line 307
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mMessage:Landroid/widget/TextView;

    .line 308
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mProgress:Landroid/view/View;

    .line 310
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 311
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mTitleId:J

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->syncIcons()V

    return-void
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/GamesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 315
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;-><init>()V

    .line 317
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/GamesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 319
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 321
    return-object v1
.end method

.method private synchronizeWithServer()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 479
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->synchronizeGames(Lcom/akop/bach/SupportsGames;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 482
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

    .line 543
    if-eqz p3, :cond_0

    .line 547
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;J)V

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 608
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/XboxLive$Games;->getSetBeaconCount(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)I

    move-result v1

    if-lt v1, v5, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080142

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 579
    :cond_1
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->newInstance()Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    move-result-object v0

    .line 580
    .local v0, "prompt":Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$5;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;J)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->setOnOkListener(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;)V

    .line 606
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 534
    :goto_0
    return-object v4

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "BoxartUrl"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ListIndex ASC, LastPlayed DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 382
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 386
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 418
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 421
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;

    if-eqz v5, :cond_0

    .line 423
    iget-object v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;

    .line 425
    .local v2, "vh":Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 452
    .end local v2    # "vh":Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 429
    .restart local v2    # "vh":Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v7, v2, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->gameUrl:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/akop/bach/activity/xboxlive/GameOverview;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "searchIntent":Landroid/content/Intent;
    const-string v5, "query"

    const v6, 0x7f0800a0

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v2, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    .end local v1    # "searchIntent":Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, v2, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->gameUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 446
    .local v3, "wwwIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x7f0b0114 -> :sswitch_0
        0x7f0b0122 -> :sswitch_2
        0x7f0b0123 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 327
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 329
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 332
    .local v6, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "account"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 335
    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "ListIndex ASC, LastPlayed DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getFirstTitleId(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mTitleId:J

    .line 341
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 344
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mTitleId:J

    .line 347
    :cond_1
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->setHasOptionsMenu(Z)V

    .line 348
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 404
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 406
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 408
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;

    .line 409
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 411
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 413
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 458
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 460
    const v0, 0x7f0a0017

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 461
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 354
    if-nez p2, :cond_0

    move-object v0, v1

    .line 374
    :goto_0
    return-object v0

    .line 357
    :cond_0
    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "layout":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 362
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mMessage:Landroid/widget/TextView;

    .line 363
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 365
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    .line 366
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 370
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 372
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 518
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 520
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 525
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
    .line 508
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput-wide p4, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mTitleId:J

    .line 509
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 511
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$OnGameSelectedListener;

    .line 512
    .local v0, "listener":Lcom/akop/bach/fragment/xboxlive/GamesFragment$OnGameSelectedListener;
    invoke-interface {v0, p4, p5}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$OnGameSelectedListener;->onGameSelected(J)V

    .line 513
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 466
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 473
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 469
    :pswitch_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->synchronizeWithServer()V

    .line 470
    const/4 v0, 0x1

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 489
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 490
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 491
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 496
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 498
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 499
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mBeaconListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getLastGameUpdate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getGameHistoryRefreshInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->synchronizeWithServer()V

    .line 503
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 393
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 396
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 398
    :cond_0
    return-void
.end method

.class public Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "RecentPlayersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$ViewHolder;,
        Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;
    }
.end annotation


# instance fields
.field private final DIALOG_CONFIRM_ADD:I

.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

.field private mProgress:Landroid/view/View;

.field private mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mTitleId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->DIALOG_CONFIRM_ADD:I

    .line 83
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    .line 84
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    .line 86
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mTitleId:J

    .line 88
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    .line 89
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mMessage:Landroid/widget/TextView;

    .line 90
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mProgress:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 116
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 172
    return-void
.end method

.method static synthetic access$000()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$1100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;Lcom/akop/bach/XboxLive$RecentPlayers;)Lcom/akop/bach/XboxLive$RecentPlayers;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$RecentPlayers;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    return-object p1
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->initializeAdapter()V

    return-void
.end method

.method private initializeAdapter()V
    .locals 6

    .prologue
    .line 498
    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    iget-object v2, v3, Lcom/akop/bach/XboxLive$RecentPlayers;->Players:Lcom/akop/bach/XboxLive$RecentPlayersCursor;

    .line 503
    .local v2, "payloadCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    invoke-direct {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .local v1, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

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

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    .line 522
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    .line 523
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    .end local v1    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    .end local v2    # "payloadCursor":Landroid/database/Cursor;
    :cond_1
    monitor-exit p0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 266
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;-><init>()V

    .line 268
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 272
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 0

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->syncIcons()V

    .line 533
    return-void
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    goto :goto_0
.end method

.method public okClicked(IJLjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 573
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v3, 0x7f08001a

    invoke-direct {v2, v3, p4}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, p4, v2, v3}, Lcom/akop/bach/TaskController;->addFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 577
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 338
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 463
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 466
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 467
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "gamertag":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 493
    .end local v2    # "gamertag":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 474
    .restart local v2    # "gamertag":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :sswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :sswitch_2
    const v5, 0x7f080021

    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080131

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 486
    .local v1, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v1, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 487
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v1, v5, v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b010b -> :sswitch_0
        0x7f0b011c -> :sswitch_1
        0x7f0b0121 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 278
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLiveAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 283
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    .line 284
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    .line 285
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    .line 286
    iput-wide v8, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mTitleId:J

    .line 288
    if-eqz p1, :cond_0

    .line 292
    :try_start_0
    const-string v2, "titleId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mTitleId:J

    .line 293
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLive$RecentPlayers;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    .line 294
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->setHasOptionsMenu(Z)V

    .line 305
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    iput-wide v8, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mTitleId:J

    .line 299
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    .line 300
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 447
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 448
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$ViewHolder;

    .line 450
    .local v2, "vh":Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$ViewHolder;
    iget-object v3, v2, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 452
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 453
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0a0016

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 455
    const v3, 0x7f0b011b

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 456
    const v3, 0x7f0b011d

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 457
    const v3, 0x7f0b0120

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 458
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
    const v0, 0x7f0a0015

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
    .line 311
    if-nez p2, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mMessage:Landroid/widget/TextView;

    .line 318
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 320
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    .line 321
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 324
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->initializeAdapter()V

    .line 326
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 328
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 403
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$MyCursorAdapter;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;J)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v4, 0x1

    .line 420
    iput-wide p4, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mTitleId:J

    .line 421
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 423
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;

    if-eqz v3, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;

    .line 426
    .local v2, "listener":Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 428
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    invoke-direct {v1}, Lcom/akop/bach/XboxLive$GamerProfileInfo;-><init>()V

    .line 429
    .local v1, "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    .line 430
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    .line 431
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IconUrl:Ljava/lang/String;

    .line 432
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CurrentActivity:Ljava/lang/String;

    .line 433
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamerscore:I

    .line 434
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleIconUrl:Ljava/lang/String;

    .line 435
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleId:Ljava/lang/String;

    .line 437
    invoke-interface {v2, v1}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;->onPlayerSelected(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V

    .line 439
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    .end local v2    # "listener":Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;
    :cond_0
    return-void

    .line 429
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    .restart local v2    # "listener":Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 369
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->synchronizeWithServer()V

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
    .line 378
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 380
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 381
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 382
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 389
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 390
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 392
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->synchronizeLocal()V

    .line 394
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->synchronizeWithServer()V

    .line 396
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 349
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "payload"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mPayload:Lcom/akop/bach/XboxLive$RecentPlayers;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 353
    :cond_1
    return-void
.end method

.method protected synchronizeWithServer()V
    .locals 4

    .prologue
    .line 537
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 538
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 559
    return-void
.end method

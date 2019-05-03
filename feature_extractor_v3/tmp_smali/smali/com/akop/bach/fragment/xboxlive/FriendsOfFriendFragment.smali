.class public Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "FriendsOfFriendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;,
        Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;
    }
.end annotation


# instance fields
.field private final DIALOG_CONFIRM_ADD:I

.field private final DIALOG_CONFIRM_REMOVE:I

.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Lcom/akop/bach/SectionedAdapter;

.field private mGamertag:Ljava/lang/String;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

.field private mProgress:Landroid/view/View;

.field private mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mTitleId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->DIALOG_CONFIRM_ADD:I

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->DIALOG_CONFIRM_REMOVE:I

    .line 86
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 87
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    .line 89
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 90
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mGamertag:Ljava/lang/String;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mTitleId:J

    .line 92
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    .line 93
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mMessage:Landroid/widget/TextView;

    .line 94
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mProgress:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 120
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 176
    return-void
.end method

.method static synthetic access$000()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$1100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/SectionedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;Lcom/akop/bach/XboxLive$FriendsOfFriend;)Lcom/akop/bach/XboxLive$FriendsOfFriend;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$FriendsOfFriend;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    return-object p1
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->initializeAdapter()V

    return-void
.end method

.method private initializeAdapter()V
    .locals 8

    .prologue
    .line 535
    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    if-eqz v4, :cond_1

    .line 539
    new-instance v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    invoke-direct {v2}, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    .local v2, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    :try_start_1
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    iget-object v3, v4, Lcom/akop/bach/XboxLive$FriendsOfFriend;->NotYetFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    .line 545
    .local v3, "payloadCursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    invoke-virtual {v2}, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    .end local v3    # "payloadCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    .line 572
    new-instance v0, Lcom/akop/bach/SectionedAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f03003d

    invoke-direct {v0, v4, v5}, Lcom/akop/bach/SectionedAdapter;-><init>(Landroid/content/Context;I)V

    .line 575
    .local v0, "adapter":Lcom/akop/bach/SectionedAdapter;
    const v4, 0x7f0800e0

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    iget-object v7, v7, Lcom/akop/bach/XboxLive$FriendsOfFriend;->NotYetFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    invoke-direct {v5, p0, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 578
    const v4, 0x7f08013a

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    iget-object v7, v7, Lcom/akop/bach/XboxLive$FriendsOfFriend;->SharedFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    invoke-direct {v5, p0, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 581
    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 583
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 585
    .end local v0    # "adapter":Lcom/akop/bach/SectionedAdapter;
    .end local v2    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    return-void

    .line 553
    .restart local v2    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    .restart local v3    # "payloadCursor":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    iget-object v3, v4, Lcom/akop/bach/XboxLive$FriendsOfFriend;->SharedFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    .line 554
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-virtual {v2}, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 585
    .end local v2    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    .end local v3    # "payloadCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;-><init>()V

    .line 282
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 287
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 0

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->syncIcons()V

    .line 593
    return-void
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    const/4 v0, 0x0

    .line 629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    goto :goto_0
.end method

.method public okClicked(IJLjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f080114

    .line 635
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 637
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 638
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v3, 0x7f08001a

    invoke-direct {v2, v3, p4}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, p4, v2, v3}, Lcom/akop/bach/TaskController;->addFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 644
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 645
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v3, 0x7f080110

    invoke-direct {v2, v3, p4}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, p4, v2, v3}, Lcom/akop/bach/TaskController;->removeFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 354
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const v7, 0x7f080021

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 488
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 491
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/akop/bach/SectionedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 492
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "gamertag":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 530
    .end local v2    # "gamertag":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 499
    .restart local v2    # "gamertag":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :sswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :sswitch_2
    const/4 v5, 0x2

    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08010f

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v2}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 512
    .local v1, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v1, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 513
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v1, v5, v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v1    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080131

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 523
    .restart local v1    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v1, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 524
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v1, v5, v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x7f0b010b -> :sswitch_0
        0x7f0b011c -> :sswitch_1
        0x7f0b011f -> :sswitch_2
        0x7f0b0121 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 293
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLiveAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 298
    const-string v2, "gamertag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mGamertag:Ljava/lang/String;

    .line 299
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    .line 300
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    .line 301
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 302
    iput-wide v8, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mTitleId:J

    .line 304
    if-eqz p1, :cond_0

    .line 308
    :try_start_0
    const-string v2, "titleId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mTitleId:J

    .line 309
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLive$FriendsOfFriend;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    .line 310
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->setHasOptionsMenu(Z)V

    .line 321
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    iput-wide v8, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mTitleId:J

    .line 315
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    .line 316
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 463
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 464
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v8, v8, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    if-nez v8, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v8, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    iget v9, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/akop/bach/SectionedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 468
    .local v5, "item":Ljava/lang/Object;
    instance-of v8, v5, Landroid/database/Cursor;

    if-eqz v8, :cond_0

    move-object v1, v5

    .line 470
    check-cast v1, Landroid/database/Cursor;

    .line 471
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "gamertag":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_2

    move v4, v6

    .line 474
    .local v4, "isFriend":Z
    :goto_1
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 476
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 477
    .local v3, "inflater":Landroid/view/MenuInflater;
    const v8, 0x7f0a0016

    invoke-virtual {v3, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    const v8, 0x7f0b011b

    iget-object v9, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v9}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 480
    const v8, 0x7f0b011d

    invoke-interface {p1, v8, v4}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 481
    const v8, 0x7f0b0120

    if-nez v4, :cond_3

    :goto_2
    invoke-interface {p1, v8, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_0

    .end local v3    # "inflater":Landroid/view/MenuInflater;
    .end local v4    # "isFriend":Z
    :cond_2
    move v4, v7

    .line 472
    goto :goto_1

    .restart local v3    # "inflater":Landroid/view/MenuInflater;
    .restart local v4    # "isFriend":Z
    :cond_3
    move v6, v7

    .line 481
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 376
    const v0, 0x7f0a0015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 377
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    if-nez p2, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    .line 330
    :cond_0
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mMessage:Landroid/widget/TextView;

    .line 334
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 336
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    .line 337
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 338
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 340
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->initializeAdapter()V

    .line 342
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 344
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 419
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;J)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 431
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

    .line 436
    iput-wide p4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mTitleId:J

    .line 437
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 439
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;

    if-eqz v3, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;

    .line 442
    .local v2, "listener":Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 444
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    invoke-direct {v1}, Lcom/akop/bach/XboxLive$GamerProfileInfo;-><init>()V

    .line 445
    .local v1, "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    .line 446
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    .line 447
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IconUrl:Ljava/lang/String;

    .line 448
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CurrentActivity:Ljava/lang/String;

    .line 449
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamerscore:I

    .line 450
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleIconUrl:Ljava/lang/String;

    .line 451
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleId:Ljava/lang/String;

    .line 453
    invoke-interface {v2, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;->onPlayerSelected(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V

    .line 455
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    .end local v2    # "listener":Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;
    :cond_0
    return-void

    .line 445
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    .restart local v2    # "listener":Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 382
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 385
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->synchronizeWithServer()V

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 396
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 397
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 398
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 405
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 406
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 408
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->synchronizeLocal()V

    .line 410
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->synchronizeWithServer()V

    .line 412
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "payload"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mPayload:Lcom/akop/bach/XboxLive$FriendsOfFriend;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor2;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 369
    :cond_1
    return-void
.end method

.method protected synchronizeWithServer()V
    .locals 4

    .prologue
    .line 597
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 621
    return-void
.end method

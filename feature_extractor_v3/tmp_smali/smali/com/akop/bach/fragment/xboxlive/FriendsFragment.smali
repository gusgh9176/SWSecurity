.class public Lcom/akop/bach/fragment/xboxlive/FriendsFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/FriendsFragment$OnFriendSelectedListener;,
        Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;,
        Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final COLUMN_ACTIVITY:I = 0x3

.field private static final COLUMN_GAMERTAG:I = 0x1

.field private static final COLUMN_ICON_URL:I = 0x6

.field private static final COLUMN_IS_FAVORITE:I = 0x8

.field private static final COLUMN_POINTS:I = 0x2

.field private static final COLUMN_STATUS_CODE:I = 0x5

.field private static final COLUMN_TITLE_ICON_URL:I = 0x7

.field private static DIALOG_CONFIRM_REMOVE:I

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Lcom/akop/bach/SectionedAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/view/View;

.field private mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mSelectedGamertag:Ljava/lang/String;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 83
    sput v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->DIALOG_CONFIRM_REMOVE:I

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "Gamertag"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Gamerscore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CurrentActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StatusDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StatusCode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TitleUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IsFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    .line 86
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mMessage:Landroid/widget/TextView;

    .line 87
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mProgress:Landroid/view/View;

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mTitleId:J

    .line 91
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 92
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 125
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 160
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

    const-string v1, "XBoxCancelRequest"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 199
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    const-string v1, "XBoxFriends"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->updateLastUpdateTime()V

    return-void
.end method

.method static synthetic access$100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->syncIcons()V

    return-void
.end method

.method static synthetic access$1100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/FriendsFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 362
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;-><init>()V

    .line 364
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/FriendsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 366
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 368
    return-object v1
.end method

.method private synchronizeWithServer()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 549
    return-void
.end method

.method private updateLastUpdateTime()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 519
    .local v9, "lastUpdated":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 522
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 524
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 526
    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "lastUpdateText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    .end local v0    # "lastUpdateText":Ljava/lang/String;
    .end local v9    # "lastUpdated":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 530
    .restart local v9    # "lastUpdated":Landroid/widget/TextView;
    :cond_1
    const v10, 0x7f0800ae

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0x240c8400

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-virtual {p0, v10, v11}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "lastUpdateText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 507
    :goto_0
    return-object v4

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 507
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "IconUrl"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "TitleUrl"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public okClicked(IJLjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 723
    sget v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->DIALOG_CONFIRM_REMOVE:I

    if-ne p1, v0, :cond_0

    .line 725
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    new-instance v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v4, 0x7f080110

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->removeFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 731
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 456
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 458
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 462
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const v6, 0x7f080114

    const/4 v4, 0x1

    .line 665
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 667
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 669
    .local v2, "friend":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    iget-object v5, v2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mGamertag:Ljava/lang/String;

    iput-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    .line 672
    .local v0, "controller":Lcom/akop/bach/TaskController;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 717
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 675
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :sswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :sswitch_2
    sget v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->DIALOG_CONFIRM_REMOVE:I

    const v6, 0x7f080021

    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08010f

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mGamertag:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    invoke-static {v5, v6, v7, v8, v9}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 687
    .local v1, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v1, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 688
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v1, v5, v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v1    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :sswitch_3
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 692
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    new-instance v7, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v8, 0x7f080002

    iget-object v9, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v8, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/akop/bach/TaskController;->acceptFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0

    .line 698
    :sswitch_4
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 699
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    new-instance v7, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v8, 0x7f080058

    iget-object v9, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v8, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/akop/bach/TaskController;->rejectFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0

    .line 705
    :sswitch_5
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 706
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    new-instance v7, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v8, 0x7f08002a

    iget-object v9, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v8, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/akop/bach/TaskController;->cancelFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto/16 :goto_0

    .line 712
    :sswitch_6
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mSelectedGamertag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b010b -> :sswitch_6
        0x7f0b0117 -> :sswitch_3
        0x7f0b0118 -> :sswitch_4
        0x7f0b011a -> :sswitch_5
        0x7f0b011c -> :sswitch_1
        0x7f0b011e -> :sswitch_0
        0x7f0b011f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 374
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 376
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 379
    .local v6, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "account"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 382
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getFirstTitleId(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mTitleId:J

    .line 388
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 391
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mTitleId:J

    .line 394
    :cond_1
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->setHasOptionsMenu(Z)V

    .line 395
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 626
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 628
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 630
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 631
    .local v1, "item":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;

    .line 632
    .local v3, "vh":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 634
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0a0013

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 637
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-wide v6, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    invoke-static {v4, v6, v7}, Lcom/akop/bach/XboxLive$Friends;->getStatusCode(Landroid/content/Context;J)I

    move-result v2

    .line 639
    .local v2, "statusCode":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 641
    const v4, 0x7f0b0116

    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 642
    const v4, 0x7f0b0119

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 643
    const v4, 0x7f0b011d

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 644
    const v4, 0x7f0b011b

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 660
    :goto_0
    return-void

    .line 646
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 648
    const v4, 0x7f0b0116

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 649
    const v4, 0x7f0b0119

    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 650
    const v4, 0x7f0b011d

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 651
    const v4, 0x7f0b011b

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 655
    :cond_1
    const v4, 0x7f0b0116

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 656
    const v4, 0x7f0b0119

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 657
    const v4, 0x7f0b011d

    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 658
    const v4, 0x7f0b011b

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 588
    const v0, 0x7f0a0012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 589
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 401
    if-nez p2, :cond_0

    .line 450
    :goto_0
    return-object v4

    .line 404
    :cond_0
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 407
    .local v7, "layout":Landroid/view/View;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "query":Ljava/lang/String;
    new-instance v6, Lcom/akop/bach/SectionedAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03003d

    invoke-direct {v6, v0, v1}, Lcom/akop/bach/SectionedAdapter;-><init>(Landroid/content/Context;I)V

    .line 411
    .local v6, "adapter":Lcom/akop/bach/SectionedAdapter;
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "StatusCode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "StatusCode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, p0, v11, v6, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v6, v9, v10}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 421
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "StatusCode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, p0, v11, v6, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v6, v9, v10}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 429
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "StatusCode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, p0, v11, v6, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v6, v9, v10}, Lcom/akop/bach/SectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 436
    iput-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    .line 438
    const v0, 0x7f0b003c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mMessage:Landroid/widget/TextView;

    .line 439
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 441
    const v0, 0x7f0b0061

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    .line 442
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAdapter:Lcom/akop/bach/SectionedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 448
    const v0, 0x7f0b0062

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mProgress:Landroid/view/View;

    move-object v4, v7

    .line 450
    goto/16 :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 493
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 498
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
    .line 479
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 481
    .local v0, "item":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    iget-wide v2, v0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mTitleId:J

    .line 482
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 484
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$OnFriendSelectedListener;

    .line 485
    .local v1, "listener":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$OnFriendSelectedListener;
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mTitleId:J

    invoke-interface {v1, v2, v3}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$OnFriendSelectedListener;->onFriendSelected(J)V

    .line 486
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 594
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 606
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 597
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0

    .line 599
    :sswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    goto :goto_0

    .line 602
    :sswitch_2
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0106 -> :sswitch_2
        0x7f0b010a -> :sswitch_0
        0x7f0b0115 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 554
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 556
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 557
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 559
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 560
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 561
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 566
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 568
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 569
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 571
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->updateLastUpdateTime()V

    .line 573
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/service/XboxLiveServiceClient;->clearFriendNotifications(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 574
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/service/XboxLiveServiceClient;->clearBeaconNotifications(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 576
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 577
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getFriendRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->synchronizeWithServer()V

    .line 581
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 469
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 474
    :cond_0
    return-void
.end method

.method public starClicked(JZ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "isSet"    # Z

    .prologue
    const/4 v5, 0x0

    .line 612
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 613
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "IsFavorite"

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 616
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 618
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 619
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 620
    return-void

    .line 613
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

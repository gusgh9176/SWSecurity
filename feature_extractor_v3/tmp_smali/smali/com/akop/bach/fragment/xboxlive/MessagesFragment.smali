.class public Lcom/akop/bach/fragment/xboxlive/MessagesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;,
        Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;
    }
.end annotation


# static fields
.field private static final COLUMN_GAMERPIC:I = 0x6

.field private static final COLUMN_IS_DIRTY:I = 0x8

.field private static final COLUMN_IS_READ:I = 0x5

.field private static final COLUMN_MESSAGE:I = 0x1

.field private static final COLUMN_SENDER:I = 0x4

.field private static final COLUMN_SENT:I = 0x3

.field private static final COLUMN_TYPE:I = 0x2

.field private static final DIALOG_CONFIRM:I = 0x2

.field public static final PROJ:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Landroid/widget/CursorAdapter;

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
    .line 83
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MessageType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Sent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Sender"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IsRead"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Gamerpic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Uid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IsDirty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 240
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 271
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 272
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mTitleId:J

    .line 273
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    .line 274
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mMessage:Landroid/widget/TextView;

    .line 275
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mProgress:Landroid/view/View;

    .line 276
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->syncIcons()V

    return-void
.end method

.method static synthetic access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/MessagesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 280
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;-><init>()V

    .line 282
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/MessagesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 286
    return-object v1
.end method

.method private synchronizeWithServer()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->synchronizeMessages(Lcom/akop/bach/SupportsMessaging;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 417
    return-void
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 559
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 563
    :goto_0
    return-object v4

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "Gamerpic"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Sent DESC, UID DESC"

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
    .line 536
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 538
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const v3, 0x7f0800b9

    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->deleteMessage(Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 542
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 380
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 384
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 497
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 500
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;

    if-eqz v5, :cond_0

    .line 502
    iget-object v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;

    .line 503
    .local v3, "vh":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
    iget-object v5, v3, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->sender:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "sender":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 530
    .end local v2    # "sender":Ljava/lang/String;
    .end local v3    # "vh":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_1
    :goto_0
    return v4

    .line 508
    .restart local v2    # "sender":Ljava/lang/String;
    .restart local v3    # "vh":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
    :pswitch_1
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-wide v8, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v7, v8, v9}, Lcom/akop/bach/XboxLive$Messages;->getUid(Landroid/content/Context;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/akop/bach/TaskController;->synchronizeMessage(Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0

    .line 512
    :pswitch_2
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :pswitch_3
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/XboxLive$Friends;->isFriend(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6, v2}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :pswitch_4
    const/4 v5, 0x2

    const v6, 0x7f080021

    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08005c

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-wide v10, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v8, v10, v11}, Lcom/akop/bach/XboxLive$Messages;->getUid(Landroid/content/Context;J)J

    move-result-wide v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    .line 523
    .local v0, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 524
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b012a
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 292
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 294
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 297
    .local v6, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "account"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 300
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Sent DESC, UID DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getFirstTitleId(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mTitleId:J

    .line 306
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 309
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mTitleId:J

    .line 312
    :cond_1
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 313
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 480
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 481
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;

    .line 483
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 486
    const v2, 0x7f0800bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->sender:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 489
    const v2, 0x7f0b0129

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 490
    const v2, 0x7f0b012b

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Lcom/akop/bach/XboxLive$Messages;->isUnreadTextMessage(Landroid/content/Context;J)Z

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 492
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 442
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 444
    const v0, 0x7f0a001b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 445
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 319
    if-nez p2, :cond_0

    move-object v3, v4

    .line 372
    :goto_0
    return-object v3

    .line 322
    :cond_0
    const v5, 0x7f030036

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, "layout":Landroid/view/View;
    new-instance v5, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v5, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 327
    const v4, 0x7f0b00c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "composeMessageButton":Landroid/view/View;
    const v4, 0x7f0b00c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 329
    .local v1, "composeMessageDesc":Landroid/widget/TextView;
    const v4, 0x7f0b00c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 331
    .local v2, "composeMessageTitle":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 333
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 336
    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    .line 338
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const v4, 0x7f080045

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 341
    new-instance v4, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$3;

    invoke-direct {v4, p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_1
    :goto_1
    const v4, 0x7f0b003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mMessage:Landroid/widget/TextView;

    .line 361
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mMessage:Landroid/widget/TextView;

    const v5, 0x7f0800bc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 363
    const v4, 0x7f0b0061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    .line 364
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 368
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 370
    const v4, 0x7f0b0062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mProgress:Landroid/view/View;

    goto/16 :goto_0

    .line 352
    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 353
    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 355
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 356
    const v4, 0x7f080046

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 549
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 554
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
    .line 401
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput-wide p4, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mTitleId:J

    .line 402
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 404
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;

    .line 407
    .local v0, "listener":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;
    invoke-interface {v0, p4, p5}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;->onMessageSelected(J)V

    .line 409
    .end local v0    # "listener":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 471
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 461
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :sswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/activity/xboxlive/SentMessageList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    goto :goto_0

    .line 467
    :sswitch_2
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->synchronizeWithServer()V

    goto :goto_0

    .line 458
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0106 -> :sswitch_2
        0x7f0b011c -> :sswitch_0
        0x7f0b0128 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 424
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 425
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 452
    const v0, 0x7f0b011b

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 453
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 430
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 432
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 434
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v0, v1}, Lcom/akop/bach/service/XboxLiveServiceClient;->clearMessageNotifications(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getLastMessageUpdate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getMessageRefreshInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->synchronizeWithServer()V

    .line 437
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 396
    :cond_0
    return-void
.end method

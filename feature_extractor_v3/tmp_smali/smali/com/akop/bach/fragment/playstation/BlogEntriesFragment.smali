.class public Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "BlogEntriesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;,
        Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mPayload:Lcom/akop/bach/util/rss/RssChannel;

.field private mProgress:Landroid/view/View;

.field private mTitleIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    .line 77
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 78
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mTitleIndex:I

    .line 80
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    .line 81
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mMessage:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mProgress:Landroid/view/View;

    .line 84
    new-instance v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    const-string v1, "PsnBlog"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;Lcom/akop/bach/util/rss/RssChannel;)Lcom/akop/bach/util/rss/RssChannel;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;
    .param p1, "x1"    # Lcom/akop/bach/util/rss/RssChannel;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->initializeAdapter()V

    return-void
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private initializeAdapter()V
    .locals 7

    .prologue
    .line 403
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    if-eqz v4, :cond_2

    .line 407
    new-instance v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-direct {v2}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .local v2, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :try_start_1
    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    iget-object v4, v4, Lcom/akop/bach/util/rss/RssChannel;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/util/rss/RssItem;

    .line 413
    .local v3, "item":Lcom/akop/bach/util/rss/RssItem;
    iget-object v4, v3, Lcom/akop/bach/util/rss/RssItem;->thumbUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v2}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/akop/bach/util/rss/RssItem;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/akop/bach/util/rss/RssItem;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 428
    new-instance v4, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    iget-object v6, v6, Lcom/akop/bach/util/rss/RssChannel;->items:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    .line 429
    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    .end local v2    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :cond_2
    monitor-exit p0

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 204
    new-instance v1, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;-><init>()V

    .line 206
    .local v1, "f":Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 210
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->syncIcons()V

    .line 437
    return-void
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 452
    return-void
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 276
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 318
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/util/rss/RssItem;

    .line 319
    .local v2, "item":Lcom/akop/bach/util/rss/RssItem;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->startActivity(Landroid/content/Intent;)V

    .line 327
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/PsnAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 221
    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 222
    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    .line 223
    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    .line 225
    if-eqz p1, :cond_1

    .line 229
    :try_start_0
    const-string v2, "titleIndex"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mTitleIndex:I

    .line 230
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 232
    :cond_0
    const-string v2, "feed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    const-string v2, "feed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/util/rss/RssChannel;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->setHasOptionsMenu(Z)V

    .line 244
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    iput v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mTitleIndex:I

    .line 238
    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    .line 239
    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 303
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 305
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 306
    .local v1, "title":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 333
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 335
    const v0, 0x7f0a0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 336
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    if-nez p2, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 253
    :cond_0
    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mMessage:Landroid/widget/TextView;

    .line 257
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 259
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    .line 260
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 263
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 264
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->initializeAdapter()V

    .line 266
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 377
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 388
    :cond_0
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
    .line 393
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;

    .line 397
    .local v0, "listener":Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    iget-object v2, v1, Lcom/akop/bach/util/rss/RssChannel;->link:Ljava/lang/String;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/util/rss/RssItem;

    invoke-interface {v0, v2, v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;->onEntrySelected(Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)V

    .line 399
    .end local v0    # "listener":Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 344
    :pswitch_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->synchronizeWithServer()V

    .line 345
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 356
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 357
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 364
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 366
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->synchronizeLocal()V

    .line 368
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->synchronizeWithServer()V

    .line 370
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 288
    const-string v0, "titleIndex"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mTitleIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "feed"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mPayload:Lcom/akop/bach/util/rss/RssChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 295
    :cond_1
    return-void
.end method

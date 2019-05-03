.class public Lcom/akop/bach/fragment/AccountsFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "AccountsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;,
        Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;,
        Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

.field private mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

.field private mHandler:Landroid/os/Handler;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Landroid/widget/TextView;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTitlePos:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 254
    new-instance v0, Lcom/akop/bach/fragment/AccountsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/AccountsFragment$1;-><init>(Lcom/akop/bach/fragment/AccountsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I

    .line 343
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mMessage:Landroid/widget/TextView;

    .line 344
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    .line 346
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mHandler:Landroid/os/Handler;

    .line 348
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    .line 349
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/AccountsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/AccountsFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/akop/bach/fragment/AccountsFragment;->synchronizeLocal()V

    return-void
.end method

.method private deleteAccount(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 654
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 655
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/AccountsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 659
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const/4 v3, 0x0

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/AccountsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/AccountsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 662
    .local v1, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private editAccount(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 638
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/AccountsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 643
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const/4 v3, 0x0

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/AccountsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08000a

    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/AccountsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 646
    .local v1, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeAdapter()V
    .locals 6

    .prologue
    .line 597
    monitor-enter p0

    .line 599
    :try_start_0
    new-instance v3, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    .line 600
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-direct {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;-><init>()V

    .line 601
    .local v1, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    iget v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .local v2, "pos":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 619
    new-instance v3, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    invoke-direct {v3, p0, v4, v5}, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/AccountsFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    .line 620
    iget-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/AccountsFragment;->mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 622
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 624
    :cond_1
    monitor-exit p0

    .line 625
    return-void

    .line 624
    .end local v1    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    .end local v2    # "pos":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static newInstance()Lcom/akop/bach/fragment/AccountsFragment;
    .locals 2

    .prologue
    .line 333
    new-instance v1, Lcom/akop/bach/fragment/AccountsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/AccountsFragment;-><init>()V

    .line 335
    .local v1, "f":Lcom/akop/bach/fragment/AccountsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/AccountsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 339
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/akop/bach/fragment/AccountsFragment;->initializeAdapter()V

    .line 631
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->syncIcons()V

    .line 632
    return-void
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 434
    iget-boolean v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 436
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 536
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/akop/bach/fragment/AccountsFragment;->mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    iget v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 537
    .local v0, "c":Landroid/database/Cursor;
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 539
    .local v2, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0b0104

    if-ne v4, v5, :cond_0

    .line 541
    invoke-direct {p0, v2}, Lcom/akop/bach/fragment/AccountsFragment;->deleteAccount(Landroid/net/Uri;)V

    .line 550
    :goto_0
    return v3

    .line 544
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0b0103

    if-ne v4, v5, :cond_1

    .line 546
    invoke-direct {p0, v2}, Lcom/akop/bach/fragment/AccountsFragment;->editAccount(Landroid/net/Uri;)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 358
    iput v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I

    .line 359
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    .line 360
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 361
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    .line 363
    if-eqz p1, :cond_2

    .line 367
    :try_start_0
    const-string v1, "cursor"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "cursor"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    iput-object v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    .line 370
    :cond_0
    const-string v1, "icons"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const-string v1, "icons"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    iput-object v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 373
    :cond_1
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_2
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/AccountsFragment;->setHasOptionsMenu(Z)V

    .line 387
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    :cond_3
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    .line 381
    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 382
    iput v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 520
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 522
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 523
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;

    .line 525
    .local v1, "vh":Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 527
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 528
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 556
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 558
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 559
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 393
    if-nez p2, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 396
    :cond_0
    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "layout":Landroid/view/View;
    const v2, 0x7f0b003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mMessage:Landroid/widget/TextView;

    .line 400
    iget-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mMessage:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    const v2, 0x7f0b0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    .line 403
    iget-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 404
    iget-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 406
    const v2, 0x7f0b00b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 409
    new-instance v2, Lcom/akop/bach/fragment/AccountsFragment$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/AccountsFragment$2;-><init>(Lcom/akop/bach/fragment/AccountsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    :cond_1
    invoke-direct {p0}, Lcom/akop/bach/fragment/AccountsFragment;->initializeAdapter()V

    .line 424
    iget-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/AccountsFragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 479
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mAdapter:Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/akop/bach/fragment/AccountsFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/AccountsFragment$3;-><init>(Lcom/akop/bach/fragment/AccountsFragment;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 505
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 506
    .local v0, "c":Landroid/database/Cursor;
    iput p3, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I

    .line 508
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;

    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;

    .line 511
    .local v1, "listener":Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;->onAccountSelected(Ljava/lang/String;Landroid/net/Uri;)V

    .line 514
    .end local v1    # "listener":Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0100

    if-ne v0, v2, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;

    invoke-interface {v0}, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;->onNewAccount()V

    :cond_0
    move v0, v1

    .line 592
    :goto_0
    return v0

    .line 579
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0102

    if-ne v0, v2, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/App;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/akop/bach/App;->showAboutDialog(Landroid/content/Context;)V

    move v0, v1

    .line 582
    goto :goto_0

    .line 592
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 457
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 459
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 564
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 566
    const v1, 0x7f0b0101

    iget-boolean v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mDualPane:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 567
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 464
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 466
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 469
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/AccountsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 471
    invoke-direct {p0}, Lcom/akop/bach/fragment/AccountsFragment;->synchronizeLocal()V

    .line 472
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "cursor"

    iget-object v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mCursor:Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    if-eqz v0, :cond_1

    .line 447
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 449
    :cond_1
    const-string v0, "titleId"

    iget v1, p0, Lcom/akop/bach/fragment/AccountsFragment;->mTitlePos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    return-void
.end method

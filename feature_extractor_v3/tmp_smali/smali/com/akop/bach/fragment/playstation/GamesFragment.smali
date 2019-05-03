.class public Lcom/akop/bach/fragment/playstation/GamesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "GamesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;,
        Lcom/akop/bach/fragment/playstation/GamesFragment$OnGameSelectedListener;
    }
.end annotation


# static fields
.field public static final COLUMN_ICON_URL:I = 0x8

.field public static final COLUMN_PROGRESS:I = 0x3

.field public static final COLUMN_TITLE:I = 0x2

.field public static final COLUMN_UNLOCKED_BRONZE:I = 0x7

.field public static final COLUMN_UNLOCKED_GOLD:I = 0x5

.field public static final COLUMN_UNLOCKED_PLATINUM:I = 0x4

.field public static final COLUMN_UNLOCKED_SILVER:I = 0x6

.field public static final PROJ:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

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
    .line 75
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Progress"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UnlockedPlatinum"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UnlockedGold"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "UnlockedSilver"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UnlockedBronze"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/playstation/GamesFragment;->PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/akop/bach/fragment/playstation/GamesFragment$1;

    const-string v1, "PsnGames"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/GamesFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 229
    new-instance v0, Lcom/akop/bach/fragment/playstation/GamesFragment$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/GamesFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 265
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 266
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 267
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    .line 268
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mMessage:Landroid/widget/TextView;

    .line 269
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mProgress:Landroid/view/View;

    .line 271
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 272
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mTitleId:J

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/GamesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/GamesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/GamesFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/playstation/GamesFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/GamesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/GamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->syncIcons()V

    return-void
.end method

.method static synthetic access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/playstation/GamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/playstation/GamesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/GamesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GamesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 276
    new-instance v1, Lcom/akop/bach/fragment/playstation/GamesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/GamesFragment;-><init>()V

    .line 278
    .local v1, "f":Lcom/akop/bach/fragment/playstation/GamesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 282
    return-object v1
.end method

.method private synchronizeWithServer()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->synchronizeGames(Lcom/akop/bach/SupportsGames;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 430
    return-void
.end method


# virtual methods
.method protected getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 486
    :goto_0
    return-object v4

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

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

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SortOrder ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 346
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 350
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 384
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;

    if-eqz v4, :cond_0

    .line 386
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;

    .line 388
    .local v2, "vh":Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 400
    .end local v2    # "vh":Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 391
    .restart local v2    # "vh":Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "searchIntent":Landroid/content/Intent;
    const-string v4, "query"

    const v5, 0x7f0800a1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/GamesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0110
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 288
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 290
    new-instance v1, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v1}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 291
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v2, 0x60

    iput v2, v1, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 293
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 296
    .local v6, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "account"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 299
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v4}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "SortOrder ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getFirstTitleId(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mTitleId:J

    .line 305
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 308
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mTitleId:J

    .line 311
    :cond_1
    invoke-virtual {p0, v7}, Lcom/akop/bach/fragment/playstation/GamesFragment;->setHasOptionsMenu(Z)V

    .line 312
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 368
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 370
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 372
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;

    .line 373
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 375
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 376
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 408
    const v0, 0x7f0a000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 409
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p2, :cond_0

    move-object v0, v1

    .line 338
    :goto_0
    return-object v0

    .line 321
    :cond_0
    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, "layout":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 326
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mMessage:Landroid/widget/TextView;

    .line 327
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f080092

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 329
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    .line 330
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 334
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/GamesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 336
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mProgress:Landroid/view/View;

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 464
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 466
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 471
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
    iput-wide p4, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mTitleId:J

    .line 455
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 457
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/playstation/GamesFragment$OnGameSelectedListener;

    .line 458
    .local v0, "listener":Lcom/akop/bach/fragment/playstation/GamesFragment$OnGameSelectedListener;
    invoke-interface {v0, p4, p5}, Lcom/akop/bach/fragment/playstation/GamesFragment$OnGameSelectedListener;->onGameSelected(J)V

    .line 459
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 417
    :pswitch_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->synchronizeWithServer()V

    .line 418
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x7f0b0106
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 437
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 438
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 443
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 445
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getLastGameUpdate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getGameHistoryRefreshInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GamesFragment;->synchronizeWithServer()V

    .line 449
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 360
    const-string v0, "currentId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/GamesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    :cond_0
    return-void
.end method

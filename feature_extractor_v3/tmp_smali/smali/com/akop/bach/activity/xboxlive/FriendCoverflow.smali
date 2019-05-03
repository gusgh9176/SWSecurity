.class public Lcom/akop/bach/activity/xboxlive/FriendCoverflow;
.super Lcom/akop/bach/activity/xboxlive/RibbonedActivity;
.source "FriendCoverflow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;,
        Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;,
        Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_ACTIVITY:I = 0x3

.field private static final COLUMN_GAMERSCORE:I = 0x2

.field private static final COLUMN_GAMERTAG:I = 0x1

.field private static final COLUMN_ICON_URL:I = 0x5

.field private static final COLUMN_STATUS:I = 0x4

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

.field private mFriendHandler:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

.field private mFriendsLastUpdated:Landroid/widget/TextView;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mRequestListener:Lcom/akop/bach/TaskController$TaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Gamertag"

    aput-object v2, v0, v1

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

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAdapter:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

    .line 228
    new-instance v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mFriendHandler:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

    .line 230
    new-instance v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;

    const-string v1, "XBoxFriends"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 260
    new-instance v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;

    const-string v1, "XBoxCancelRequest"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mFriendsLastUpdated:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mFriendHandler:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method public static actionShowFriends(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method private loadIconsInBackground()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v0}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    .line 126
    .local v0, "cp":Lcom/akop/bach/ImageCache$CachePolicy;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 128
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Lcom/akop/bach/ImageCache;Lcom/akop/bach/ImageCache$CachePolicy;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->reoriented()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->finish()V

    .line 121
    :goto_0
    return-void

    .line 101
    :cond_0
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->setContentView(I)V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mIconCache:Ljava/util/HashMap;

    .line 104
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mFriendsLastUpdated:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/akop/bach/uiwidget/CoverFlow;

    .line 107
    .local v6, "coverFlow":Lcom/akop/bach/uiwidget/CoverFlow;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setSpacing(I)V

    .line 108
    const/16 v0, -0xf0

    invoke-virtual {v6, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setMaxZoom(I)V

    .line 109
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/akop/bach/uiwidget/CoverFlow;->setSelection(IZ)V

    .line 110
    const/16 v0, 0x3e8

    invoke-virtual {v6, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setAnimationDuration(I)V

    .line 111
    invoke-virtual {v6, p0}, Lcom/akop/bach/uiwidget/CoverFlow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    new-instance v7, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v7, p0, p0, v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v7, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAdapter:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

    .line 118
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mFriendHandler:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->updateSyncTime()V

    .line 120
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAdapter:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

    invoke-virtual {v6, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 478
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 479
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 482
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
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
    .line 405
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v0, p4, p5}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;J)V

    .line 406
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 472
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 464
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->onSearchRequested()Z

    move-result v0

    goto :goto_0

    .line 466
    :sswitch_1
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v1}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    goto :goto_0

    .line 469
    :sswitch_2
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0106 -> :sswitch_2
        0x7f0b010a -> :sswitch_0
        0x7f0b0115 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onPause()V

    .line 421
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 423
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 424
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 425
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 430
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onResume()V

    .line 432
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 434
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 435
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 437
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->loadIconsInBackground()V

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getFriendRefreshInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 442
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAdapter:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAdapter:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;->notifyDataSetChanged()V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mFriendHandler:Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->updateSyncTime()V

    .line 449
    return-void
.end method

.method public reoriented()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 370
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 371
    .local v2, "orientation":I
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getCoverflowMode()I

    move-result v1

    .line 373
    .local v1, "coverflowMode":I
    if-ne v1, v3, :cond_1

    if-ne v2, v3, :cond_1

    .line 376
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    const-string v4, "Reorienting ..."

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v4}, Lcom/akop/bach/activity/xboxlive/FriendList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 391
    :goto_0
    return v3

    .line 382
    :cond_1
    if-nez v1, :cond_3

    .line 384
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    const-string v4, "Reorienting ..."

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 387
    :cond_2
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v4}, Lcom/akop/bach/activity/xboxlive/FriendList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    goto :goto_0

    .line 391
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected updateRibbon()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->updateRibbon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

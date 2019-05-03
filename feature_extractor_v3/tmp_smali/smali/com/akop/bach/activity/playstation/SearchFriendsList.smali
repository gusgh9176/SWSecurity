.class public Lcom/akop/bach/activity/playstation/SearchFriendsList;
.super Landroid/app/ListActivity;
.source "SearchFriendsList.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_ICON_URL:I = 0x2

.field private static final COLUMN_ONLINE_ID:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
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

.field private mNoResults:Landroid/widget/TextView;

.field private mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OnlineId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/playstation/SearchFriendsList;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/SearchFriendsList;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->getManagedCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/playstation/SearchFriendsList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/playstation/SearchFriendsList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getManagedCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 78
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/activity/playstation/SearchFriendsList;->PROJECTION:[Ljava/lang/String;

    const-string v3, "OnlineId LIKE \'%\'||?||\'%\'"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v0

    const-string v5, "Status ASC,OnlineId COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private loadIconsInBackground()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v0}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    .line 133
    .local v0, "cp":Lcom/akop/bach/ImageCache$CachePolicy;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 135
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/akop/bach/activity/playstation/SearchFriendsList$1;-><init>(Lcom/akop/bach/activity/playstation/SearchFriendsList;Lcom/akop/bach/ImageCache;Lcom/akop/bach/ImageCache$CachePolicy;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method private search()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->getManagedCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 87
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    const v3, 0x7f0800db

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;-><init>(Lcom/akop/bach/activity/playstation/SearchFriendsList;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    .line 96
    .local v0, "adapter":Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v2, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v1, 0x7f030021

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->setContentView(I)V

    .line 107
    const v1, 0x7f0b0088

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mIconCache:Ljava/util/HashMap;

    .line 110
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/akop/bach/activity/playstation/FriendSummary;->actionShow(Landroid/content/Context;J)V

    .line 118
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->finish()V

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    return-void

    .line 121
    :cond_1
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mQuery:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->search()V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 216
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 220
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 206
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 209
    check-cast v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 210
    .local v0, "friend":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    iget-wide v2, v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mFriendId:J

    invoke-static {p0, v2, v3}, Lcom/akop/bach/activity/playstation/FriendSummary;->actionShow(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 191
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 199
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 200
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->loadIconsInBackground()V

    .line 201
    return-void
.end method

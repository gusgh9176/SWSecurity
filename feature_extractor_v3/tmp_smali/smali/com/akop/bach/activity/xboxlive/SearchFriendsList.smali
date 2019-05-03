.class public Lcom/akop/bach/activity/xboxlive/SearchFriendsList;
.super Landroid/app/ListActivity;
.source "SearchFriendsList.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_GAMERSCORE:I = 0x2

.field private static final COLUMN_GAMERTAG:I = 0x1

.field private static final COLUMN_ICON_URL:I = 0x3

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
    const/4 v0, 0x4

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

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/SearchFriendsList;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->getManagedCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/SearchFriendsList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getManagedCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 79
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->PROJECTION:[Ljava/lang/String;

    const-string v3, "Gamertag LIKE \'%\'||?||\'%\'"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v0

    const-string v5, "StatusCode ASC,Gamertag COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private loadIconsInBackground()V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v0}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    .line 134
    .local v0, "cp":Lcom/akop/bach/ImageCache$CachePolicy;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 136
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$1;-><init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;Lcom/akop/bach/ImageCache;Lcom/akop/bach/ImageCache$CachePolicy;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method private search()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->getManagedCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 88
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    const v3, 0x7f0800db

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;-><init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V

    .line 97
    .local v0, "adapter":Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->setContentView(I)V

    .line 108
    const v1, 0x7f0b0088

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mNoResults:Landroid/widget/TextView;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mIconCache:Ljava/util/HashMap;

    .line 111
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;J)V

    .line 119
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->finish()V

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    return-void

    .line 122
    :cond_1
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mQuery:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->search()V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 217
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 221
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
    .line 207
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 210
    check-cast v0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 211
    .local v0, "friend":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    iget-wide v2, v0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    invoke-static {p0, v2, v3}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 192
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 200
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 201
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->loadIconsInBackground()V

    .line 202
    return-void
.end method

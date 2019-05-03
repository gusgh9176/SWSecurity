.class public Lcom/akop/bach/activity/FriendSelector;
.super Landroid/app/ListActivity;
.source "FriendSelector.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_GAMERTAG:I = 0x1

.field private static final COLUMN_ICON_URL:I = 0x2

.field private static final COLUMN_ID:I


# instance fields
.field private mAccount:Lcom/akop/bach/SupportsFriends;

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

.field private mNoRecords:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/FriendSelector;)Lcom/akop/bach/SupportsFriends;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/FriendSelector;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/akop/bach/activity/FriendSelector;->mAccount:Lcom/akop/bach/SupportsFriends;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/FriendSelector;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/FriendSelector;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/akop/bach/activity/FriendSelector;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static actionSelectFriends(Landroid/app/Activity;Lcom/akop/bach/SupportsFriends;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;

    .prologue
    .line 261
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/akop/bach/activity/FriendSelector;->actionSelectFriends(Landroid/app/Activity;Lcom/akop/bach/SupportsFriends;Ljava/util/ArrayList;Z)V

    .line 262
    return-void
.end method

.method public static actionSelectFriends(Landroid/app/Activity;Lcom/akop/bach/SupportsFriends;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;
    .param p3, "allowMultiselect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/akop/bach/SupportsFriends;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/FriendSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    const-string v1, "multiselect"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    if-eqz p2, :cond_0

    .line 253
    const-string v1, "selected"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 255
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    return-void
.end method

.method private loadIconsInBackground()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v0}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    .line 95
    .local v0, "cp":Lcom/akop/bach/ImageCache$CachePolicy;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 97
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/akop/bach/activity/FriendSelector$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/akop/bach/activity/FriendSelector$1;-><init>(Lcom/akop/bach/activity/FriendSelector;Lcom/akop/bach/ImageCache;Lcom/akop/bach/ImageCache$CachePolicy;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/FriendSelector;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/akop/bach/activity/FriendSelector;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/SupportsFriends;

    iput-object v2, p0, Lcom/akop/bach/activity/FriendSelector;->mAccount:Lcom/akop/bach/SupportsFriends;

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/akop/bach/activity/FriendSelector;->finish()V

    .line 90
    :goto_0
    return-void

    .line 79
    :cond_0
    const v2, 0x7f0b0012

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/FriendSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/activity/FriendSelector;->mNoRecords:Landroid/widget/TextView;

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/activity/FriendSelector;->mIconCache:Ljava/util/HashMap;

    .line 82
    new-instance v0, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;

    iget-object v2, p0, Lcom/akop/bach/activity/FriendSelector;->mAccount:Lcom/akop/bach/SupportsFriends;

    invoke-interface {v2, p0}, Lcom/akop/bach/SupportsFriends;->createCursor(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;-><init>(Lcom/akop/bach/activity/FriendSelector;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 85
    .local v0, "adapter":Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/FriendSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 87
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/akop/bach/activity/FriendSelector;->mNoRecords:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, "iconUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/activity/FriendSelector;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lcom/akop/bach/activity/FriendSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/activity/FriendSelector;->mAccount:Lcom/akop/bach/SupportsFriends;

    invoke-interface {v2, p1, p2}, Lcom/akop/bach/SupportsFriends;->getFriendUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 179
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 166
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "friendId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/akop/bach/activity/FriendSelector;->setResult(ILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/akop/bach/activity/FriendSelector;->finish()V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 150
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 158
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 160
    invoke-direct {p0}, Lcom/akop/bach/activity/FriendSelector;->loadIconsInBackground()V

    .line 161
    return-void
.end method

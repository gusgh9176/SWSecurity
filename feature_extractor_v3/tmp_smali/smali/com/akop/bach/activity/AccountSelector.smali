.class public Lcom/akop/bach/activity/AccountSelector;
.super Landroid/app/ListActivity;
.source "AccountSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/AccountSelector$1;,
        Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;,
        Lcom/akop/bach/activity/AccountSelector$AccountInfo;,
        Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;,
        Lcom/akop/bach/activity/AccountSelector$TaskHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/akop/bach/activity/AccountSelector$TaskHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/akop/bach/activity/AccountSelector$TaskHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/AccountSelector$TaskHandler;-><init>(Lcom/akop/bach/activity/AccountSelector;Lcom/akop/bach/activity/AccountSelector$1;)V

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSelector;->mHandler:Lcom/akop/bach/activity/AccountSelector$TaskHandler;

    .line 174
    return-void
.end method

.method public static actionSelectAccount(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/akop/bach/activity/AccountSelector;->actionSelectAccount(Landroid/app/Activity;I)V

    .line 137
    return-void
.end method

.method public static actionSelectAccount(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/AccountSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method

.method private refreshAccounts()V
    .locals 10

    .prologue
    .line 94
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/Preferences;->getAccounts()[Lcom/akop/bach/BasicAccount;

    move-result-object v7

    .line 95
    .local v7, "accounts":[Lcom/akop/bach/BasicAccount;
    array-length v0, v7

    new-array v9, v0, [Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .line 97
    .local v9, "infos":[Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    .line 99
    aget-object v6, v7, v8

    .line 100
    .local v6, "account":Lcom/akop/bach/BasicAccount;
    new-instance v0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    invoke-virtual {v6}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/akop/bach/BasicAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/akop/bach/BasicAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/activity/AccountSelector$AccountInfo;-><init>(Lcom/akop/bach/activity/AccountSelector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 106
    .end local v6    # "account":Lcom/akop/bach/BasicAccount;
    :cond_0
    new-instance v0, Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;-><init>(Lcom/akop/bach/activity/AccountSelector;Lcom/akop/bach/activity/AccountSelector$1;)V

    invoke-static {v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 107
    new-instance v0, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;

    invoke-direct {v0, p0, p0, v9}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;-><init>(Lcom/akop/bach/activity/AccountSelector;Landroid/content/Context;[Lcom/akop/bach/activity/AccountSelector$AccountInfo;)V

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/AccountSelector;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSelector;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 88
    .local v0, "lv":Landroid/widget/ListView;
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/AccountSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    return-void
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 281
    move-object v0, p3

    check-cast v0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .line 282
    .local v0, "info":Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    iput-object p4, v0, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->icon:Landroid/graphics/Bitmap;

    .line 284
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSelector;->mHandler:Lcom/akop/bach/activity/AccountSelector$TaskHandler;

    invoke-virtual {v1}, Lcom/akop/bach/activity/AccountSelector$TaskHandler;->notifyDataSetChanged()V

    .line 285
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 260
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSelector;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .line 261
    .local v1, "accountInfo":Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->uuid:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 265
    const-string v3, "newAccount"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/akop/bach/activity/AccountSelector;->setResult(ILandroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSelector;->finish()V

    .line 276
    return-void

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    iget-object v4, v1, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/akop/bach/Preferences;->getAccount(Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v0

    .line 271
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 125
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 115
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 117
    invoke-direct {p0}, Lcom/akop/bach/activity/AccountSelector;->refreshAccounts()V

    .line 118
    return-void
.end method

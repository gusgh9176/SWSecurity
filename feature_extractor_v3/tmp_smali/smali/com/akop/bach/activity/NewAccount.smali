.class public Lcom/akop/bach/activity/NewAccount;
.super Landroid/app/ListActivity;
.source "NewAccount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/NewAccount$1;,
        Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;,
        Lcom/akop/bach/activity/NewAccount$TypeInfo;,
        Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 175
    return-void
.end method

.method public static actionShow(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/NewAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private refresh()V
    .locals 14

    .prologue
    const v13, 0x7f080053

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v10, "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/activity/NewAccount$TypeInfo;>;"
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    .line 77
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/akop/bach/activity/NewAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, "c":Landroid/database/Cursor;
    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/NewAccount;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "type":Ljava/lang/String;
    new-instance v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;

    invoke-direct {v7, p0, v9}, Lcom/akop/bach/activity/NewAccount$TypeInfo;-><init>(Lcom/akop/bach/activity/NewAccount;Ljava/lang/String;)V

    .local v7, "info":Lcom/akop/bach/activity/NewAccount$TypeInfo;
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    iput-boolean v11, v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;->isEnabled:Z

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;->intent:Landroid/content/Intent;

    .line 85
    new-array v0, v11, [Ljava/lang/Object;

    aput-object v9, v0, v12

    invoke-virtual {p0, v13, v0}, Lcom/akop/bach/activity/NewAccount;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;->description:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    invoke-virtual {p0}, Lcom/akop/bach/activity/NewAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/NewAccount;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    new-instance v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .end local v7    # "info":Lcom/akop/bach/activity/NewAccount$TypeInfo;
    invoke-direct {v7, p0, v9}, Lcom/akop/bach/activity/NewAccount$TypeInfo;-><init>(Lcom/akop/bach/activity/NewAccount;Ljava/lang/String;)V

    .restart local v7    # "info":Lcom/akop/bach/activity/NewAccount$TypeInfo;
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    iput-boolean v11, v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;->isEnabled:Z

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;->intent:Landroid/content/Intent;

    .line 96
    new-array v0, v11, [Ljava/lang/Object;

    aput-object v9, v0, v12

    invoke-virtual {p0, v13, v0}, Lcom/akop/bach/activity/NewAccount;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/akop/bach/activity/NewAccount$TypeInfo;->description:Ljava/lang/String;

    .line 98
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .line 99
    .local v8, "infos":[Lcom/akop/bach/activity/NewAccount$TypeInfo;
    invoke-interface {v10, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;

    invoke-direct {v0, p0, v2}, Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;-><init>(Lcom/akop/bach/activity/NewAccount;Lcom/akop/bach/activity/NewAccount$1;)V

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 102
    new-instance v0, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;

    invoke-direct {v0, p0, p0, v8}, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;-><init>(Lcom/akop/bach/activity/NewAccount;Landroid/content/Context;[Lcom/akop/bach/activity/NewAccount$TypeInfo;)V

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/NewAccount;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/NewAccount;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/akop/bach/activity/NewAccount;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 62
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/akop/bach/activity/NewAccount;->refresh()V

    .line 65
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
    .line 192
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/NewAccount;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .line 194
    .local v1, "info":Lcom/akop/bach/activity/NewAccount$TypeInfo;
    iget-object v3, v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 198
    :try_start_0
    iget-object v3, v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/NewAccount;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/akop/bach/activity/NewAccount;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 206
    :cond_1
    iget-boolean v3, v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->isEnabled:Z

    if-eqz v3, :cond_2

    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/NewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "text":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 206
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    const v3, 0x7f08002e

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/NewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 110
    invoke-direct {p0}, Lcom/akop/bach/activity/NewAccount;->refresh()V

    .line 111
    return-void
.end method

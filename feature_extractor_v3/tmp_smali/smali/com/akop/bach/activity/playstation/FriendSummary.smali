.class public Lcom/akop/bach/activity/playstation/FriendSummary;
.super Lcom/akop/bach/activity/playstation/PsnSinglePane;
.source "FriendSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/PsnSinglePane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "friendId"    # J

    .prologue
    .line 91
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/akop/bach/PSN$Friends;->getAccountId(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/PsnAccount;

    invoke-static {p0, v0, p1, p2}, Lcom/akop/bach/activity/playstation/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;J)V

    .line 94
    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # J

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/FriendSummary;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    const-string v1, "friendId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method private getTitleId()J
    .locals 10

    .prologue
    .line 58
    const-wide/16 v4, -0x1

    .line 60
    .local v4, "titleId":J
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "seg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 65
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 67
    invoke-static {p0, v4, v5}, Lcom/akop/bach/PSN$Friends;->getAccountId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 68
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    .line 70
    .local v2, "prefs":Lcom/akop/bach/Preferences;
    invoke-virtual {v2, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v6

    check-cast v6, Lcom/akop/bach/PsnAccount;

    iput-object v6, p0, Lcom/akop/bach/activity/playstation/FriendSummary;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 74
    .end local v0    # "accountId":J
    .end local v2    # "prefs":Lcom/akop/bach/Preferences;
    .end local v3    # "seg":Ljava/lang/String;
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "friendId"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 77
    :cond_1
    return-wide v4
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v0

    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getTitleId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->newInstance(Lcom/akop/bach/PsnAccount;J)Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getTitleId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/akop/bach/PSN$Friends;->getOnlineId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .local v0, "gamertag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "Friend not found"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/FriendSummary;->getTitleId()J

    move-result-wide v4

    .line 45
    .local v4, "titleId":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 47
    invoke-static {p0, v4, v5}, Lcom/akop/bach/PSN$Friends;->getAccountId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 48
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    .line 50
    .local v2, "prefs":Lcom/akop/bach/Preferences;
    invoke-virtual {v2, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/PsnAccount;

    iput-object v3, p0, Lcom/akop/bach/activity/playstation/FriendSummary;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 53
    .end local v0    # "accountId":J
    .end local v2    # "prefs":Lcom/akop/bach/Preferences;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/activity/playstation/PsnSinglePane;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

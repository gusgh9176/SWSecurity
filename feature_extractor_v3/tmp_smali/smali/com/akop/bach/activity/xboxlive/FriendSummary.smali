.class public Lcom/akop/bach/activity/xboxlive/FriendSummary;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;
.source "FriendSummary.java"


# instance fields
.field private mFriendId:J

.field private mGamertag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mGamertag:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/akop/bach/XboxLive$Friends;->getAccountId(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLiveAccount;

    invoke-static {p0, v0, p1, p2}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;J)V

    .line 93
    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;
    .param p2, "friendId"    # J

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/FriendSummary;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v1, "friendId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0, p1, p2}, Lcom/akop/bach/XboxLive$Friends;->getFriendId(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)J

    move-result-wide v0

    .line 109
    .local v0, "friendId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 110
    invoke-static {p0, p1, v0, v1}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;J)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    invoke-static {v0, v2, v3}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const v0, 0x7f080086

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mGamertag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 49
    iput-wide v6, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    .line 51
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "seg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 56
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    .line 58
    iget-wide v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    invoke-static {p0, v4, v5}, Lcom/akop/bach/XboxLive$Friends;->getAccountId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 59
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    .line 61
    .local v2, "prefs":Lcom/akop/bach/Preferences;
    invoke-virtual {v2, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/XboxLiveAccount;

    iput-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 65
    .end local v0    # "accountId":J
    .end local v2    # "prefs":Lcom/akop/bach/Preferences;
    .end local v3    # "seg":Ljava/lang/String;
    :cond_0
    iget-wide v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "friendId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    .line 68
    :cond_1
    iget-wide v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    .line 70
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    const-string v4, "Friend not specified"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->finish()V

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_3
    iget-wide v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mFriendId:J

    invoke-static {p0, v4, v5}, Lcom/akop/bach/XboxLive$Friends;->getGamertag(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendSummary;->mGamertag:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 79
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 80
    const-string v4, "Friend not found"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->finish()V

    goto :goto_0

    .line 86
    :cond_5
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

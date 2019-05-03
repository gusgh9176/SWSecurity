.class public Lcom/akop/bach/activity/xboxlive/FriendList;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;
.source "FriendList.java"

# interfaces
.implements Lcom/akop/bach/fragment/xboxlive/FriendsFragment$OnFriendSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/FriendList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    const v0, 0x7f080089

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/FriendList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeParameters()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->reoriented()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;->initializeParameters()Z

    move-result v0

    goto :goto_0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    move-result-object v0

    return-object v0
.end method

.method public onFriendSelected(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendList;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    .line 68
    .local v0, "detailFragment":Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
    invoke-virtual {v0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->resetTitle(J)V

    .line 74
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;J)V

    goto :goto_0
.end method

.method public reoriented()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 92
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 93
    .local v2, "orientation":I
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getCoverflowMode()I

    move-result v1

    .line 95
    .local v1, "coverflowMode":I
    if-ne v1, v3, :cond_1

    if-ne v2, v5, :cond_1

    .line 98
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "Reorienting ..."

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->actionShowFriends(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 113
    :goto_0
    return v3

    .line 104
    :cond_1
    if-ne v1, v5, :cond_3

    .line 106
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    const-string v4, "Reorienting ..."

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->actionShowFriends(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    goto :goto_0

    .line 113
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

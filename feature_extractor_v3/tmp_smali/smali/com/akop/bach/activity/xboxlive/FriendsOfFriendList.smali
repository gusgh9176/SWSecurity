.class public Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;
.source "FriendsOfFriendList.java"

# interfaces
.implements Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$OnPlayerSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const-string v1, "gamertag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method private getGamertag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gamertag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    const v0, 0x7f080164

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getGamertag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getGamertag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    move-result-object v0

    return-object v0
.end method

.method public onPlayerSelected(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    .line 63
    .local v0, "detailFragment":Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    invoke-virtual {v0, p1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->resetTitle(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V

    .line 69
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/XboxLive$GamerProfileInfo;)V

    goto :goto_0
.end method

.class public Lcom/akop/bach/activity/xboxlive/RecentPlayerList;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;
.source "RecentPlayerList.java"

# interfaces
.implements Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$OnPlayerSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    move-result-object v0

    return-object v0
.end method

.method public onPlayerSelected(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    .line 58
    .local v0, "detailFragment":Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    invoke-virtual {v0, p1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->resetTitle(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V

    .line 64
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/RecentPlayerList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/XboxLive$GamerProfileInfo;)V

    goto :goto_0
.end method

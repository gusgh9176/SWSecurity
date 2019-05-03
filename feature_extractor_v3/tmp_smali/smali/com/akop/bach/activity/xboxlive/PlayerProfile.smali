.class public Lcom/akop/bach/activity/xboxlive/PlayerProfile;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;
.source "PlayerProfile.java"


# instance fields
.field private mGamertag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->mGamertag:Ljava/lang/String;

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/XboxLive$GamerProfileInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "info"    # Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/PlayerProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    const-string v1, "info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/XboxLive$GamerProfileInfo;)Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .line 47
    .local v0, "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "GamerProfileInfo is null"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->finish()V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v1, v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/PlayerProfile;->mGamertag:Ljava/lang/String;

    goto :goto_0
.end method

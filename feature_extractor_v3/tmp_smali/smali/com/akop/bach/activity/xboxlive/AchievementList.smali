.class public Lcom/akop/bach/activity/xboxlive/AchievementList;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;
.source "AchievementList.java"


# instance fields
.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/AchievementList;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameId"    # J

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/AchievementList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string v1, "gameId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AchievementList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AchievementList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gameId"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;JZ)Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const v0, 0x7f080013

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/AchievementList;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/AchievementList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AchievementList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gameId"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, "titleId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 49
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "AchievementList: no gameId"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AchievementList;->finish()V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/akop/bach/XboxLive$Games;->getTitle(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/AchievementList;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

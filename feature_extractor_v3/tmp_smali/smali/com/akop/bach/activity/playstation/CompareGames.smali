.class public Lcom/akop/bach/activity/playstation/CompareGames;
.super Lcom/akop/bach/activity/playstation/PsnMultiPane;
.source "CompareGames.java"

# interfaces
.implements Lcom/akop/bach/fragment/playstation/CompareGamesFragment$OnGameSelectedListener;


# instance fields
.field private mGamertag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/PsnMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/CompareGames;

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


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    const v0, 0x7f080041

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/activity/playstation/CompareGames;->mGamertag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/playstation/CompareGames;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeParameters()Z
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareGames;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gamertag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/activity/playstation/CompareGames;->mGamertag:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Missing gamertag; bailing"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/akop/bach/activity/playstation/PsnMultiPane;->initializeParameters()Z

    move-result v0

    goto :goto_0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareGames;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/playstation/CompareGames;->mGamertag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->newInstance(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareGames;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/playstation/CompareGames;->mGamertag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->newInstance(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-result-object v0

    return-object v0
.end method

.method public onGameSelected(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "yourGamerpicUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareGames;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/CompareGames;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .line 92
    .local v0, "detailFragment":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    invoke-virtual {v0, p1, p2}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->resetTitle(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 99
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareGames;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/activity/playstation/CompareGames;->mGamertag:Ljava/lang/String;

    invoke-static {p0, p1, p2, v1, v2}, Lcom/akop/bach/activity/playstation/CompareTrophies;->actionShow(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

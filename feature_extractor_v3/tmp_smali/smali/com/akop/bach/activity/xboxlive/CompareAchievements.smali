.class public Lcom/akop/bach/activity/xboxlive/CompareAchievements;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;
.source "CompareAchievements.java"


# instance fields
.field private mGameTitle:Ljava/lang/String;

.field private mGamertag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yourGamerpicUrl"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p4, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/akop/bach/XboxLiveAccount;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/CompareAchievements;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string v1, "gamertag"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "gameInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    const-string v1, "yourGamerpicUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "yourGamerpicUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "yourGamerpicUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gameInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 84
    .local v0, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->mGamertag:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    move-result-object v2

    return-object v2
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const v0, 0x7f080040

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->mGamertag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->mGameTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gameInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 50
    .local v0, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gamertag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->mGamertag:Ljava/lang/String;

    .line 51
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/CompareAchievements;->mGameTitle:Ljava/lang/String;

    .line 53
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

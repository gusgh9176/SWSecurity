.class public Lcom/akop/bach/activity/playstation/CompareTrophies;
.super Lcom/akop/bach/activity/playstation/PsnSinglePane;
.source "CompareTrophies.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/PsnSinglePane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yourGamerpicUrl"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/akop/bach/PsnAccount;
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
            "Lcom/akop/bach/PsnAccount;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/CompareTrophies;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    const-string v1, "gamertag"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "gameInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    const-string v1, "yourGamerpicUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "yourGamerpicUrl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "yourGamerpicUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "gameInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 73
    .local v0, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "gamertag"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "gamertag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v3

    invoke-static {v3, v1, v0, v2}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->newInstance(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    move-result-object v3

    return-object v3
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 56
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "gameInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 59
    .local v0, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "gamertag"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "gamertag":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "gameTitle":Ljava/lang/String;
    const v3, 0x7f080042

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/activity/playstation/CompareTrophies;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

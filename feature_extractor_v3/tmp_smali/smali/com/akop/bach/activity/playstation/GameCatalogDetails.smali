.class public Lcom/akop/bach/activity/playstation/GameCatalogDetails;
.super Lcom/akop/bach/activity/playstation/PsnSinglePane;
.source "GameCatalogDetails.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/PsnSinglePane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/GameCatalogDetails;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    const-string v1, "gameItem"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalogDetails;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v1

    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalogDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "gameItem"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->newInstance(Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalogDetails;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gameItem"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/PSN$GameCatalogItem;

    .line 52
    .local v0, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    const v1, 0x7f080090

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/akop/bach/activity/playstation/GameCatalogDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/akop/bach/activity/playstation/GameCatalog;
.super Lcom/akop/bach/activity/playstation/PsnMultiPane;
.source "GameCatalog.java"

# interfaces
.implements Lcom/akop/bach/fragment/playstation/GameCatalogFragment$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/PsnMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/GameCatalog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/GameCatalog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalog;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalog;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 2
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalog;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/GameCatalog;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .line 71
    .local v0, "detailFragment":Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
    invoke-virtual {v0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->resetTitle(Lcom/akop/bach/PSN$GameCatalogItem;)V

    .line 80
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/GameCatalog;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/akop/bach/activity/playstation/GameCatalogDetails;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)V

    goto :goto_0
.end method

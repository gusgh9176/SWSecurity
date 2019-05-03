.class public Lcom/akop/bach/activity/Accounts;
.super Lcom/akop/bach/activity/RibbonedMultiPane;
.source "Accounts.java"

# interfaces
.implements Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/Accounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private openAccount(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    const/4 v3, 0x1

    .line 92
    .local v3, "openExternal":Z
    invoke-virtual {p0}, Lcom/akop/bach/activity/Accounts;->isDualPane()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v1, p0, Lcom/akop/bach/activity/Accounts;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    .line 95
    .local v1, "detailFragment":Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/akop/bach/Preferences;->getAccount(Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/XboxLiveAccount;

    .line 97
    .local v0, "account":Lcom/akop/bach/XboxLiveAccount;
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->resetTitle(Lcom/akop/bach/XboxLiveAccount;)V

    .line 100
    const/4 v3, 0x0

    .line 108
    .end local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    .end local v1    # "detailFragment":Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 110
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/Accounts;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 104
    .restart local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    .restart local v1    # "detailFragment":Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->resetTitle(Lcom/akop/bach/XboxLiveAccount;)V

    goto :goto_0
.end method


# virtual methods
.method protected allowNullAccounts()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected getActionBarLayout()I
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f03002b

    return v0
.end method

.method protected getBachTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f030048

    return v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->newInstance()Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/akop/bach/fragment/AccountsFragment;->newInstance()Lcom/akop/bach/fragment/AccountsFragment;

    move-result-object v0

    return-object v0
.end method

.method public onAccountSelected(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/activity/Accounts;->openAccount(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    return-void
.end method

.method public onNewAccount()V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0}, Lcom/akop/bach/activity/NewAccount;->actionShow(Landroid/content/Context;)V

    .line 87
    return-void
.end method

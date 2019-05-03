.class public Lcom/akop/bach/activity/xboxlive/AccountSummary;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;
.source "AccountSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/AccountSummary;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSummary;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/AccountSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/AccountSummary;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "seg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 46
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 47
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    .line 49
    .local v2, "prefs":Lcom/akop/bach/Preferences;
    invoke-virtual {v2, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/XboxLiveAccount;

    iput-object v4, p0, Lcom/akop/bach/activity/xboxlive/AccountSummary;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 53
    .end local v0    # "accountId":J
    .end local v2    # "prefs":Lcom/akop/bach/Preferences;
    .end local v3    # "seg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

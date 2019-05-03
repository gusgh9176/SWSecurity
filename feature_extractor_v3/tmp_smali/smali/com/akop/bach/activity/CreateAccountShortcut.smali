.class public Lcom/akop/bach/activity/CreateAccountShortcut;
.super Landroid/app/Activity;
.source "CreateAccountShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createShortcut(Lcom/akop/bach/BasicAccount;)V
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 47
    if-nez p1, :cond_1

    .line 49
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "Missing account"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/CreateAccountShortcut;->finish()V

    .line 70
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getProfileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .local v1, "shortcutIntent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020054

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/akop/bach/activity/CreateAccountShortcut;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 78
    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/BasicAccount;

    invoke-direct {p0, v0}, Lcom/akop/bach/activity/CreateAccountShortcut;->createShortcut(Lcom/akop/bach/BasicAccount;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/CreateAccountShortcut;->finish()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/akop/bach/activity/AccountSelector;->actionSelectAccount(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.class public Lcom/akop/bach/activity/CreateFriendShortcut;
.super Landroid/app/Activity;
.source "CreateFriendShortcut.java"


# static fields
.field private static final SELECT_ACCOUNT:I = 0x0

.field private static final SELECT_FRIEND:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/SupportsFriends;

.field private mFriendId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createShortcut()V
    .locals 6

    .prologue
    .line 78
    iget-object v2, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 80
    :cond_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "Missing account or friend ID"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/activity/CreateFriendShortcut;->finish()V

    .line 102
    :goto_0
    return-void

    .line 87
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    iget-wide v4, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    invoke-interface {v3, v4, v5}, Lcom/akop/bach/SupportsFriends;->getFriendUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    .local v1, "shortcutIntent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    iget-wide v4, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    invoke-interface {v3, v4, v5}, Lcom/akop/bach/SupportsFriends;->getFriendScreenName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020053

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/akop/bach/activity/CreateFriendShortcut;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 111
    if-nez p1, :cond_1

    .line 113
    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/SupportsFriends;

    iput-object v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    .line 114
    iget-object v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    invoke-static {p0, v0}, Lcom/akop/bach/activity/FriendSelector;->actionSelectFriends(Landroid/app/Activity;Lcom/akop/bach/SupportsFriends;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    const-string v0, "friendId"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    .line 119
    invoke-direct {p0}, Lcom/akop/bach/activity/CreateFriendShortcut;->createShortcut()V

    .line 121
    invoke-virtual {p0}, Lcom/akop/bach/activity/CreateFriendShortcut;->finish()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/akop/bach/activity/CreateFriendShortcut;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    .line 51
    if-eqz p1, :cond_1

    .line 53
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/SupportsFriends;

    iput-object v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    .line 57
    :cond_0
    const-string v0, "friendId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "friendId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    if-nez v0, :cond_2

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/akop/bach/activity/AccountSelector;->actionSelectAccount(Landroid/app/Activity;I)V

    .line 63
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mAccount:Lcom/akop/bach/SupportsFriends;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    :cond_0
    iget-wide v0, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 73
    const-string v0, "friendId"

    iget-wide v2, p0, Lcom/akop/bach/activity/CreateFriendShortcut;->mFriendId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    :cond_1
    return-void
.end method

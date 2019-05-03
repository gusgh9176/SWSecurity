.class public Lcom/akop/bach/activity/xboxlive/MessageList;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;
.source "MessageList.java"

# interfaces
.implements Lcom/akop/bach/fragment/xboxlive/MessagesFragment$OnMessageSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    const v0, 0x7f0800c9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/MessageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    move-result-object v0

    return-object v0
.end method

.method public onMessageSelected(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageList;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageList;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    .line 57
    .local v0, "detailFragment":Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
    invoke-virtual {v0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->resetTitle(J)V

    .line 63
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageList;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/akop/bach/activity/xboxlive/MessageView;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsMessaging;J)V

    goto :goto_0
.end method

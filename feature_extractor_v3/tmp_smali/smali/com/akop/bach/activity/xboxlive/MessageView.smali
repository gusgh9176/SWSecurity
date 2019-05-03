.class public Lcom/akop/bach/activity/xboxlive/MessageView;
.super Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;
.source "MessageView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/XboxLiveSinglePane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsMessaging;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/SupportsMessaging;
    .param p2, "messageId"    # J

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string v1, "messageId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageView;->getAccount()Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "messageId"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;
.super Ljava/lang/Object;
.source "PlayerProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->synchronizeLocal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 401
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    const v4, 0x7f0800af

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->val$title:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

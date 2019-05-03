.class Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;
.super Ljava/lang/Object;
.source "FriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->loadFriendDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 509
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 511
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    const v4, 0x7f0800af

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->val$title:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

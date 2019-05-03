.class Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

.field final synthetic val$requestParam:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->val$requestParam:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 187
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

    iget-object v3, v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$300(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

    iget-object v4, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Lcom/akop/bach/TaskController$TaskListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 190
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->val$requestParam:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    .line 191
    .local v0, "ri":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

    iget-object v2, v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;

    iget-object v3, v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    iget v4, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;->resId:I

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;->gamertag:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 193
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 194
    return-void
.end method

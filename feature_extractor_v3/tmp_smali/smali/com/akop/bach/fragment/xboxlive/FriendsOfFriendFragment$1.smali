.class Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "FriendsOfFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 101
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$000()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->synchronizeWithServer()V

    .line 109
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/TaskController$TaskListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 112
    instance-of v1, p2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 114
    check-cast v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    .line 115
    .local v0, "ri":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;->resId:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;->gamertag:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 117
    .end local v0    # "ri":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;
    :cond_0
    return-void
.end method

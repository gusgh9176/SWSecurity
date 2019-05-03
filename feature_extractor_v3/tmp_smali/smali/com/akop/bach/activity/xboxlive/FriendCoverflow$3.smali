.class Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "FriendCoverflow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/FriendCoverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-direct {p0, p2}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 267
    return-void
.end method

.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v1, p2}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showToast(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onTaskStarted()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 292
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 280
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v2, v2, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->access$400(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Lcom/akop/bach/TaskController$TaskListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    move-object v0, p2

    .line 283
    check-cast v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    .line 284
    .local v0, "ri":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$3;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget v3, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;->resId:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;->gamertag:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showToast(Ljava/lang/String;)V

    .line 286
    return-void
.end method

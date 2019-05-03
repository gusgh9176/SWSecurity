.class Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;
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
    .line 231
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-direct {p0, p2}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 236
    return-void
.end method

.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-virtual {v0, p2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showError(Ljava/lang/Exception;)V

    .line 242
    return-void
.end method

.method public onTaskStarted()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 256
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    const v2, 0x7f080150

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->setLoadText(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->setLoadText(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$2;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->access$300(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->updateSyncTime()V

    .line 250
    return-void
.end method

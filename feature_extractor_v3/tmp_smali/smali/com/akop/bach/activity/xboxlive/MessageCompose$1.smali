.class Lcom/akop/bach/activity/xboxlive/MessageCompose$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageCompose;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 96
    return-void
.end method

.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->access$200(Lcom/akop/bach/activity/xboxlive/MessageCompose;)Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;->allowEdits(Z)V

    .line 108
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-static {v1, p2}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showToast(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onTaskStarted()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 115
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showToast(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.class Lcom/akop/bach/activity/xboxlive/GameOverview$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "GameOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$1;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$1;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 158
    return-void
.end method

.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$1;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-virtual {v0, p2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showError(Ljava/lang/Exception;)V

    .line 152
    return-void
.end method

.method public onTaskStarted()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$1;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 164
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$1;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$300(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->updateStatus(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

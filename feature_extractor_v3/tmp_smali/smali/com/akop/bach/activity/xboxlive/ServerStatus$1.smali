.class Lcom/akop/bach/activity/xboxlive/ServerStatus$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "ServerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/ServerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$1;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$1;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->access$200(Lcom/akop/bach/activity/xboxlive/ServerStatus;)Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->showProgressBar(Z)V

    .line 103
    return-void
.end method

.method public onTaskStarted()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$1;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->access$200(Lcom/akop/bach/activity/xboxlive/ServerStatus;)Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->showProgressBar(Z)V

    .line 109
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$1;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->access$200(Lcom/akop/bach/activity/xboxlive/ServerStatus;)Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->updateStatus(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

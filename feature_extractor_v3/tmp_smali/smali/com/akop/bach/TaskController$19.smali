.class Lcom/akop/bach/TaskController$19;
.super Lcom/akop/bach/TaskController$Task;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/TaskController;

.field final synthetic val$job:Lcom/akop/bach/TaskController$CustomTask;


# direct methods
.method constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/TaskController$CustomTask;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/akop/bach/Account;
    .param p4, "x2"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/akop/bach/TaskController$19;->this$0:Lcom/akop/bach/TaskController;

    iput-object p5, p0, Lcom/akop/bach/TaskController$19;->val$job:Lcom/akop/bach/TaskController$CustomTask;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/akop/bach/TaskController$TaskParameter;)V
    .locals 1
    .param p1, "pm"    # Lcom/akop/bach/TaskController$TaskParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/akop/bach/TaskController$19;->val$job:Lcom/akop/bach/TaskController$CustomTask;

    invoke-virtual {v0}, Lcom/akop/bach/TaskController$CustomTask;->runTask()V

    .line 692
    iget-object v0, p0, Lcom/akop/bach/TaskController$19;->val$job:Lcom/akop/bach/TaskController$CustomTask;

    invoke-virtual {v0}, Lcom/akop/bach/TaskController$CustomTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/akop/bach/TaskController$TaskParameter;->result:Ljava/lang/Object;

    .line 693
    return-void
.end method

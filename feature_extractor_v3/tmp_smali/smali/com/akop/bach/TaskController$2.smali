.class Lcom/akop/bach/TaskController$2;
.super Lcom/akop/bach/TaskController$Task;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/TaskController;->deleteAccount(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/TaskController;

.field final synthetic val$account:Lcom/akop/bach/BasicAccount;


# direct methods
.method constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLcom/akop/bach/BasicAccount;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/akop/bach/Account;
    .param p4, "x2"    # Lcom/akop/bach/TaskController$TaskListener;
    .param p5, "x3"    # Z

    .prologue
    .line 435
    iput-object p1, p0, Lcom/akop/bach/TaskController$2;->this$0:Lcom/akop/bach/TaskController;

    iput-object p6, p0, Lcom/akop/bach/TaskController$2;->val$account:Lcom/akop/bach/BasicAccount;

    invoke-direct/range {p0 .. p5}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Z)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/akop/bach/TaskController$TaskParameter;)V
    .locals 2
    .param p1, "pm"    # Lcom/akop/bach/TaskController$TaskParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/akop/bach/TaskController$2;->val$account:Lcom/akop/bach/BasicAccount;

    iget-object v1, p0, Lcom/akop/bach/TaskController$2;->this$0:Lcom/akop/bach/TaskController;

    invoke-static {v1}, Lcom/akop/bach/TaskController;->access$100(Lcom/akop/bach/TaskController;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/BasicAccount;->cleanUp(Landroid/content/Context;)V

    .line 440
    return-void
.end method

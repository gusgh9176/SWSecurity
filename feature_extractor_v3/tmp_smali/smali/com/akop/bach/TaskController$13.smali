.class Lcom/akop/bach/TaskController$13;
.super Lcom/akop/bach/TaskController$Task;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/TaskController;->synchronizeMessages(Lcom/akop/bach/SupportsMessaging;Lcom/akop/bach/TaskController$TaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/TaskController;

.field final synthetic val$account:Lcom/akop/bach/SupportsMessaging;


# direct methods
.method constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsMessaging;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/akop/bach/Account;
    .param p4, "x2"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/akop/bach/TaskController$13;->this$0:Lcom/akop/bach/TaskController;

    iput-object p5, p0, Lcom/akop/bach/TaskController$13;->val$account:Lcom/akop/bach/SupportsMessaging;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;)V

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
    .line 598
    iget-object v0, p0, Lcom/akop/bach/TaskController$13;->val$account:Lcom/akop/bach/SupportsMessaging;

    iget-object v1, p0, Lcom/akop/bach/TaskController$13;->this$0:Lcom/akop/bach/TaskController;

    invoke-static {v1}, Lcom/akop/bach/TaskController;->access$100(Lcom/akop/bach/TaskController;)Landroid/app/Application;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/akop/bach/SupportsMessaging;->updateMessages(Landroid/content/Context;)V

    .line 599
    return-void
.end method

.class Lcom/akop/bach/TaskController$10;
.super Lcom/akop/bach/TaskController$Task;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/TaskController;->acceptFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/TaskController;

.field final synthetic val$account:Lcom/akop/bach/SupportsFriendManagement;

.field final synthetic val$friendId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/akop/bach/Account;
    .param p4, "x2"    # Lcom/akop/bach/TaskController$TaskListener;
    .param p5, "x3"    # Z
    .param p6, "x4"    # Ljava/lang/Object;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/akop/bach/TaskController$10;->this$0:Lcom/akop/bach/TaskController;

    iput-object p7, p0, Lcom/akop/bach/TaskController$10;->val$account:Lcom/akop/bach/SupportsFriendManagement;

    iput-object p8, p0, Lcom/akop/bach/TaskController$10;->val$friendId:Ljava/lang/Object;

    invoke-direct/range {p0 .. p6}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/akop/bach/TaskController$TaskParameter;)V
    .locals 3
    .param p1, "pm"    # Lcom/akop/bach/TaskController$TaskParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/akop/bach/TaskController$10;->val$account:Lcom/akop/bach/SupportsFriendManagement;

    iget-object v1, p0, Lcom/akop/bach/TaskController$10;->this$0:Lcom/akop/bach/TaskController;

    invoke-static {v1}, Lcom/akop/bach/TaskController;->access$100(Lcom/akop/bach/TaskController;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/TaskController$10;->val$friendId:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/akop/bach/SupportsFriendManagement;->acceptFriendRequest(Landroid/content/Context;Ljava/lang/Object;)V

    .line 554
    return-void
.end method

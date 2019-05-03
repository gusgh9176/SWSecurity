.class Lcom/akop/bach/TaskController$18;
.super Lcom/akop/bach/TaskController$Task;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/TaskController;->compareAchievements(Lcom/akop/bach/SupportsCompareAchievements;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/TaskController;

.field final synthetic val$account:Lcom/akop/bach/SupportsCompareAchievements;

.field final synthetic val$gameId:Ljava/lang/Object;

.field final synthetic val$userId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsCompareAchievements;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/akop/bach/Account;
    .param p4, "x2"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/akop/bach/TaskController$18;->this$0:Lcom/akop/bach/TaskController;

    iput-object p5, p0, Lcom/akop/bach/TaskController$18;->val$account:Lcom/akop/bach/SupportsCompareAchievements;

    iput-object p6, p0, Lcom/akop/bach/TaskController$18;->val$userId:Ljava/lang/Object;

    iput-object p7, p0, Lcom/akop/bach/TaskController$18;->val$gameId:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/akop/bach/TaskController$TaskParameter;)V
    .locals 4
    .param p1, "pm"    # Lcom/akop/bach/TaskController$TaskParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/akop/bach/TaskController$18;->val$account:Lcom/akop/bach/SupportsCompareAchievements;

    iget-object v1, p0, Lcom/akop/bach/TaskController$18;->this$0:Lcom/akop/bach/TaskController;

    invoke-static {v1}, Lcom/akop/bach/TaskController;->access$100(Lcom/akop/bach/TaskController;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/TaskController$18;->val$userId:Ljava/lang/Object;

    iget-object v3, p0, Lcom/akop/bach/TaskController$18;->val$gameId:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/akop/bach/SupportsCompareAchievements;->compareAchievements(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/akop/bach/TaskController$TaskParameter;->result:Ljava/lang/Object;

    .line 679
    return-void
.end method

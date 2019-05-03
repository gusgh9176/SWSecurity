.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-direct {p0, p2}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$1;

    invoke-direct {v1, p0, p2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$1;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

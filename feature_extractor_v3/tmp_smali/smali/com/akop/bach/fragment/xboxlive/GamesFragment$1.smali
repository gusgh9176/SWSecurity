.class Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-direct {p0, p2}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$1$1;

    invoke-direct {v1, p0, p2}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$1$1;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

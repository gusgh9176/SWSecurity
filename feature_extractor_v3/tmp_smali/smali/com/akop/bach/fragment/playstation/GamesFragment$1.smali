.class Lcom/akop/bach/fragment/playstation/GamesFragment$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GamesFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    invoke-direct {p0, p2}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 114
    invoke-static {}, Lcom/akop/bach/fragment/playstation/GamesFragment;->access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/GamesFragment$1$1;

    invoke-direct {v1, p0, p2}, Lcom/akop/bach/fragment/playstation/GamesFragment$1$1;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-static {}, Lcom/akop/bach/fragment/playstation/GamesFragment;->access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/GamesFragment$1$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/GamesFragment$1$2;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "GameCatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 103
    invoke-static {}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$400()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$1;

    invoke-direct {v1, p0, p2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$1;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-static {}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;

    invoke-direct {v1, p0, p3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;
.super Ljava/lang/Object;
.source "GameCatalogDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;

    iget-object v1, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$202(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;Lcom/akop/bach/PSN$GameCatalogItemDetails;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    .line 115
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$300(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    .line 116
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$400(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    .line 118
    :cond_0
    return-void
.end method

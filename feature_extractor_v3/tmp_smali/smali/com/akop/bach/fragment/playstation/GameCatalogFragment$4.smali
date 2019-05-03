.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "GameCatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/PSN$GameCatalogList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1700(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->createLocaleBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 671
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1700(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1800(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1200(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1900(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$2000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/akop/bach/parser/PsnParser;->fetchGameCatalog(Lcom/akop/bach/PsnAccount;IIII)Lcom/akop/bach/PSN$GameCatalogList;

    move-result-object v6

    .line 674
    .local v6, "list":Lcom/akop/bach/PSN$GameCatalogList;
    invoke-virtual {p0, v6}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$4;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 680
    return-void

    .line 678
    .end local v6    # "list":Lcom/akop/bach/PSN$GameCatalogList;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

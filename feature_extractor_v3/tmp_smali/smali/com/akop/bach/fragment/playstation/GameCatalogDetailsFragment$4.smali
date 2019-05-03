.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "GameCatalogDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->synchronizeWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/PSN$GameCatalogItemDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$700(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-virtual {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/akop/bach/PsnAccount;->createLocaleBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v1

    .line 461
    .local v1, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$700(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$800(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/parser/PsnParser;->fetchGameCatalogItemDetails(Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    .line 463
    .local v0, "details":Lcom/akop/bach/PSN$GameCatalogItemDetails;
    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v1}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 469
    return-void

    .line 467
    .end local v0    # "details":Lcom/akop/bach/PSN$GameCatalogItemDetails;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v2
.end method

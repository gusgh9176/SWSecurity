.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;
.super Ljava/lang/Object;
.source "GameCatalogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->val$result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->val$result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/akop/bach/PSN$GameCatalogList;

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/PSN$GameCatalogList;

    .line 130
    .local v0, "list":Lcom/akop/bach/PSN$GameCatalogList;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$500(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;Lcom/akop/bach/PSN$GameCatalogList;)V

    .line 131
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$600(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    .line 134
    .end local v0    # "list":Lcom/akop/bach/PSN$GameCatalogList;
    :cond_0
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v2, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    const v3, 0x7f0800d7

    invoke-virtual {v2, v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v2, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 137
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$300(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void
.end method

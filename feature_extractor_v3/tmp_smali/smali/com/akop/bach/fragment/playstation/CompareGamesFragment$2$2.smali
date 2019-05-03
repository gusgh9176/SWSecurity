.class Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/PSN$ComparedGameInfo;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v1, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/PSN$ComparedGameInfo;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$802(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Lcom/akop/bach/PSN$ComparedGameInfo;)Lcom/akop/bach/PSN$ComparedGameInfo;

    .line 140
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$900(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)V

    .line 141
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$1000(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$500(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$600(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method

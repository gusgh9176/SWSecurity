.class Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v1, v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/XboxLive$ComparedGameInfo;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$702(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Lcom/akop/bach/XboxLive$ComparedGameInfo;)Lcom/akop/bach/XboxLive$ComparedGameInfo;

    .line 144
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)V

    .line 145
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$900(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$500(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method

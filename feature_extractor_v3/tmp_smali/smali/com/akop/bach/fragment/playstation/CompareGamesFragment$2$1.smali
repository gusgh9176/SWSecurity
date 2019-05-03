.class Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->val$e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$500(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$600(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
.end method

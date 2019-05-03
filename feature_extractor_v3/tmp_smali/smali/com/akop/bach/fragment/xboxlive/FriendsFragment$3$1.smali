.class Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$700(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$1;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method

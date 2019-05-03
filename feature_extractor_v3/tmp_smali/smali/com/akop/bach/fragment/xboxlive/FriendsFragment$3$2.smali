.class Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$700(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$1000(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)V

    .line 231
    return-void
.end method

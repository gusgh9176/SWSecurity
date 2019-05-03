.class Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;
.super Ljava/lang/Object;
.source "FriendsOfFriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/XboxLive$FriendsOfFriend;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v1, v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/XboxLive$FriendsOfFriend;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$802(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;Lcom/akop/bach/XboxLive$FriendsOfFriend;)Lcom/akop/bach/XboxLive$FriendsOfFriend;

    .line 154
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$900(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V

    .line 155
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1000(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$500(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$300(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/XboxLive$Friends;->isFriend(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$300(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/FriendSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;
.super Ljava/lang/Object;
.source "FriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 162
    return-void
.end method

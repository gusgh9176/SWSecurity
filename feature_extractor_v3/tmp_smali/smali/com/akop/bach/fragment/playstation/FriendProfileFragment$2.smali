.class Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;
.super Ljava/lang/Object;
.source "FriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->access$100(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->access$200(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->access$300(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Lcom/akop/bach/TaskController$TaskListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendProfile(Lcom/akop/bach/SupportsFriends;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 136
    return-void
.end method

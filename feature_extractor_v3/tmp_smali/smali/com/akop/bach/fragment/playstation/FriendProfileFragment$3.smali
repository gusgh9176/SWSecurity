.class Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;
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
    .line 140
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->access$100(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->access$200(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/playstation/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V

    .line 145
    return-void
.end method

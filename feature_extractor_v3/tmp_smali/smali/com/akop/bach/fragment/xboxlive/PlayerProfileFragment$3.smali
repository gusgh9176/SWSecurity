.class Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;
.super Ljava/lang/Object;
.source "PlayerProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 206
    return-void
.end method

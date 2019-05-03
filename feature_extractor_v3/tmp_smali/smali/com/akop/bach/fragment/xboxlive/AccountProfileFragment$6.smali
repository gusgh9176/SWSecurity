.class Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$6;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/akop/bach/activity/xboxlive/MessageList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 300
    return-void
.end method

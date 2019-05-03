.class Lcom/akop/bach/fragment/AccountsFragment$2;
.super Ljava/lang/Object;
.source "AccountsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/AccountsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/AccountsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/AccountsFragment;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/akop/bach/fragment/AccountsFragment$2;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment$2;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/akop/bach/fragment/AccountsFragment$2;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;

    invoke-interface {v0}, Lcom/akop/bach/fragment/AccountsFragment$OnAccountSelectedListener;->onNewAccount()V

    .line 418
    :cond_0
    return-void
.end method

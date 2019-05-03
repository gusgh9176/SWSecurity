.class Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1$1;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0800fd

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 80
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    return-void
.end method

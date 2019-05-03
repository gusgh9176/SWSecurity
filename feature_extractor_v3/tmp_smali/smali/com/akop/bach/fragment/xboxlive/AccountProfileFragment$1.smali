.class Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "AccountProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
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
    .line 70
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1$1;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

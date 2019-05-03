.class Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$1;
.super Ljava/lang/Object;
.source "PlayerProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$1;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$400()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$1;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$1;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/MessagesFragment$3;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$900(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;
.super Ljava/lang/Object;
.source "SentMessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->refreshMessageContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

.field final synthetic val$gamertag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;->val$gamertag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 350
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;->val$gamertag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

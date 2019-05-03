.class Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;
.super Ljava/lang/Object;
.source "PlayerProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->val$result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->val$result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    if-eqz v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .line 117
    .local v0, "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$702(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;Lcom/akop/bach/XboxLive$GamerProfileInfo;)Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .line 120
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    .line 123
    .end local v0    # "info":Lcom/akop/bach/XboxLive$GamerProfileInfo;
    :cond_1
    return-void
.end method

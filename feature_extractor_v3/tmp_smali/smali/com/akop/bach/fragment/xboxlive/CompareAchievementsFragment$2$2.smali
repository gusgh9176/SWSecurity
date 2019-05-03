.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;
.super Ljava/lang/Object;
.source "CompareAchievementsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    iget-object v1, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$1002(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Lcom/akop/bach/XboxLive$ComparedAchievementInfo;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    .line 241
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$1100(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V

    .line 242
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$1200(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$700(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2$2;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

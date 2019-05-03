.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$500(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$500(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$700(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3$2;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    .line 185
    return-void
.end method

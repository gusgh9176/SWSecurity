.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/akop/bach/XboxLive$Games;->getGameUrl(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

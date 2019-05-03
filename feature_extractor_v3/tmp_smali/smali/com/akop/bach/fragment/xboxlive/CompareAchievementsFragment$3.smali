.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;
.super Ljava/lang/Object;
.source "CompareAchievementsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$1300(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$1300(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    .local v0, "gameUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$1400(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 388
    .end local v0    # "gameUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

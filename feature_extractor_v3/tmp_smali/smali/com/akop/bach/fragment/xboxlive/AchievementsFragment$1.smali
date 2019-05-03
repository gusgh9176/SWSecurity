.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;
.super Landroid/database/ContentObserver;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 119
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/akop/bach/XboxLive$Games;->isDirty(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "Game is Dirty - updating achieves"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$300(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    .line 130
    return-void
.end method

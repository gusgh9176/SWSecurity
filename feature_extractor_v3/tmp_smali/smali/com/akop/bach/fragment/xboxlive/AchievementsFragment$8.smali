.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->beaconClicked(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;J)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    iput-wide p2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beaconTextEntered(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 753
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;

    invoke-direct {v2, p0, p1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$1500(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Lcom/akop/bach/TaskController$TaskListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 771
    return-void
.end method

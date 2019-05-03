.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->beaconTextEntered(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 763
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;

    iget-wide v2, v2, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8;->val$id:J

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$8$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/parser/XboxLiveParser;->setBeacon(Lcom/akop/bach/XboxLiveAccount;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 769
    return-void

    .line 767
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

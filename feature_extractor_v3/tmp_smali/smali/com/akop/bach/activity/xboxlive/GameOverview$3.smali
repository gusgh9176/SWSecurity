.class Lcom/akop/bach/activity/xboxlive/GameOverview$3;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "GameOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview;->loadGameOverview(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/XboxLive$GameOverviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$3;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iput-object p2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$3;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$3;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/GameOverview;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchGameOverview(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/GameOverview$3;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

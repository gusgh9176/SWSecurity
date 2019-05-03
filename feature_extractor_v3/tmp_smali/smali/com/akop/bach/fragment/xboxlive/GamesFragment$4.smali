.class Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/GamesFragment;->beaconClicked(JZ)V
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
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;J)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    iput-wide p2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;->val$id:J

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 553
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 557
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$4;->val$id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->removeBeacon(Lcom/akop/bach/XboxLiveAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 563
    return-void

    .line 561
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

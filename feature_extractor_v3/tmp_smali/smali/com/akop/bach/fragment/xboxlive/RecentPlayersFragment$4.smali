.class Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "RecentPlayersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->synchronizeWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/XboxLive$RecentPlayers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

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
    .line 546
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 550
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchRecentPlayers(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;

    move-result-object v1

    .line 551
    .local v1, "players":Lcom/akop/bach/XboxLive$RecentPlayers;
    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$4;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 557
    return-void

    .line 555
    .end local v1    # "players":Lcom/akop/bach/XboxLive$RecentPlayers;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v2
.end method

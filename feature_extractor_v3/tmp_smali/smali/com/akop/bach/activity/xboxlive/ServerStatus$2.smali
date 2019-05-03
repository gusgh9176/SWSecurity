.class Lcom/akop/bach/activity/xboxlive/ServerStatus$2;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "ServerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/ServerStatus;->requestServerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/XboxLive$LiveStatusInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$2;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 3

    .prologue
    .line 202
    new-instance v1, Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$2;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-direct {v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->fetchServerStatus()Lcom/akop/bach/XboxLive$LiveStatusInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/ServerStatus$2;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 217
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v2
.end method

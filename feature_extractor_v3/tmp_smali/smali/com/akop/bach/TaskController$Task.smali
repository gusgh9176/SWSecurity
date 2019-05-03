.class abstract Lcom/akop/bach/TaskController$Task;
.super Ljava/lang/Object;
.source "TaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation


# instance fields
.field public alwaysRun:Z

.field public description:Ljava/lang/String;

.field public isDisabled:Z

.field public listener:Lcom/akop/bach/TaskController$TaskListener;

.field public mAccount:Lcom/akop/bach/Account;

.field public requestParam:Ljava/lang/Object;

.field public taskError:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/akop/bach/TaskController;


# direct methods
.method public constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 7
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/akop/bach/Account;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 140
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Z)V
    .locals 7
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/akop/bach/Account;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;
    .param p5, "alwaysRun"    # Z

    .prologue
    .line 145
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/TaskController$Task;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;)V
    .locals 1
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/akop/bach/Account;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;
    .param p5, "alwaysRun"    # Z
    .param p6, "requestParam"    # Ljava/lang/Object;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/akop/bach/TaskController$Task;->this$0:Lcom/akop/bach/TaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/TaskController$Task;->isDisabled:Z

    .line 151
    iput-object p3, p0, Lcom/akop/bach/TaskController$Task;->mAccount:Lcom/akop/bach/Account;

    .line 152
    iput-object p4, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    .line 153
    iput-object p2, p0, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    .line 154
    iput-boolean p5, p0, Lcom/akop/bach/TaskController$Task;->alwaysRun:Z

    .line 155
    iput-object p6, p0, Lcom/akop/bach/TaskController$Task;->requestParam:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/TaskController$Task;->taskError:Ljava/lang/Exception;

    .line 157
    return-void
.end method


# virtual methods
.method protected abstract execute(Lcom/akop/bach/TaskController$TaskParameter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public run()V
    .locals 11

    .prologue
    .line 162
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v6

    .line 166
    .local v6, "tc":Lcom/akop/bach/TaskController;
    const/4 v0, 0x0

    .line 167
    .local v0, "callbackCalled":Z
    :try_start_0
    new-instance v5, Lcom/akop/bach/TaskController$TaskParameter;

    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->this$0:Lcom/akop/bach/TaskController;

    invoke-direct {v5, v7}, Lcom/akop/bach/TaskController$TaskParameter;-><init>(Lcom/akop/bach/TaskController;)V

    .line 168
    .local v5, "pm":Lcom/akop/bach/TaskController$TaskParameter;
    invoke-virtual {p0, v5}, Lcom/akop/bach/TaskController$Task;->execute(Lcom/akop/bach/TaskController$TaskParameter;)V

    .line 170
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->this$0:Lcom/akop/bach/TaskController;

    invoke-static {v7}, Lcom/akop/bach/TaskController;->access$000(Lcom/akop/bach/TaskController;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    iget-object v7, v6, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/TaskController$TaskListener;

    .line 174
    .local v4, "l":Lcom/akop/bach/TaskController$TaskListener;
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/akop/bach/TaskController$TaskListener;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v9}, Lcom/akop/bach/TaskController$TaskListener;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->mAccount:Lcom/akop/bach/Account;

    iget-object v9, p0, Lcom/akop/bach/TaskController$Task;->requestParam:Ljava/lang/Object;

    iget-object v10, v5, Lcom/akop/bach/TaskController$TaskParameter;->result:Ljava/lang/Object;

    invoke-virtual {v4, v7, v9, v10}, Lcom/akop/bach/TaskController$TaskListener;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    :cond_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    if-nez v0, :cond_2

    :try_start_2
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/akop/bach/TaskController$Task;->alwaysRun:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v7, :cond_2

    .line 186
    :try_start_3
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    iget-object v8, p0, Lcom/akop/bach/TaskController$Task;->mAccount:Lcom/akop/bach/Account;

    iget-object v9, p0, Lcom/akop/bach/TaskController$Task;->requestParam:Ljava/lang/Object;

    iget-object v10, v5, Lcom/akop/bach/TaskController$TaskParameter;->result:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10}, Lcom/akop/bach/TaskController$TaskListener;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 228
    .end local v5    # "pm":Lcom/akop/bach/TaskController$TaskParameter;
    :cond_2
    :goto_1
    return-void

    .line 180
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pm":Lcom/akop/bach/TaskController$TaskParameter;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 195
    .end local v5    # "pm":Lcom/akop/bach/TaskController$TaskParameter;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 198
    iput-object v1, p0, Lcom/akop/bach/TaskController$Task;->taskError:Ljava/lang/Exception;

    .line 200
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    :cond_3
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->this$0:Lcom/akop/bach/TaskController;

    invoke-static {v7}, Lcom/akop/bach/TaskController;->access$000(Lcom/akop/bach/TaskController;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 205
    :try_start_6
    iget-object v7, v6, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/TaskController$TaskListener;

    .line 207
    .restart local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lcom/akop/bach/TaskController$TaskListener;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v9}, Lcom/akop/bach/TaskController$TaskListener;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 209
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->mAccount:Lcom/akop/bach/Account;

    invoke-virtual {v4, v7, v1}, Lcom/akop/bach/TaskController$TaskListener;->onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 210
    const/4 v0, 0x1

    goto :goto_2

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    .restart local v5    # "pm":Lcom/akop/bach/TaskController$TaskParameter;
    :catch_1
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 213
    .end local v5    # "pm":Lcom/akop/bach/TaskController$TaskParameter;
    :cond_5
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 215
    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/akop/bach/TaskController$Task;->alwaysRun:Z

    if-eqz v7, :cond_2

    .line 219
    :try_start_9
    iget-object v7, p0, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    iget-object v8, p0, Lcom/akop/bach/TaskController$Task;->mAccount:Lcom/akop/bach/Account;

    invoke-virtual {v7, v8, v1}, Lcom/akop/bach/TaskController$TaskListener;->onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 221
    :catch_2
    move-exception v3

    .line 223
    .local v3, "innerE":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 224
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "innerE":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v7
.end method

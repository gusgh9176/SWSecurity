.class public Lcom/akop/bach/TaskController;
.super Ljava/lang/Object;
.source "TaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/TaskController$Task;,
        Lcom/akop/bach/TaskController$CustomTask;,
        Lcom/akop/bach/TaskController$TaskListener;,
        Lcom/akop/bach/TaskController$TaskParameter;
    }
.end annotation


# static fields
.field private static inst:Lcom/akop/bach/TaskController;


# instance fields
.field private mApp:Landroid/app/Application;

.field private mBusy:Z

.field private mCurrentTask:Lcom/akop/bach/TaskController$Task;

.field private mListenerLock:Ljava/lang/Object;

.field public mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/akop/bach/TaskController$TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/akop/bach/TaskController$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    sput-object v0, Lcom/akop/bach/TaskController;->inst:Lcom/akop/bach/TaskController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/TaskController;->mApp:Landroid/app/Application;

    .line 245
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/TaskController;->mTasks:Ljava/util/concurrent/BlockingQueue;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    .line 249
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/akop/bach/TaskController;->mThread:Ljava/lang/Thread;

    .line 250
    iget-object v0, p0, Lcom/akop/bach/TaskController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/TaskController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/TaskController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/TaskController;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/TaskController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/akop/bach/TaskController;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method private declared-synchronized addTask(Lcom/akop/bach/TaskController$Task;)Z
    .locals 6
    .param p1, "newTask"    # Lcom/akop/bach/TaskController$Task;

    .prologue
    const/4 v5, 0x1

    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-object v3, v3, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    iget-object v4, p1, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-object v4, p1, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    iput-object v4, v3, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    .line 361
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating listener for current task \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-object v4, v4, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 368
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/akop/bach/TaskController;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/TaskController$Task;

    .line 370
    .local v2, "task":Lcom/akop/bach/TaskController$Task;
    iget-object v3, v2, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    iget-object v4, p1, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    iget-object v3, p1, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    iput-object v3, v2, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    .line 374
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating listener for future task \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "task":Lcom/akop/bach/TaskController$Task;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 384
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/akop/bach/TaskController;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    :try_start_3
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller added new task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/akop/bach/TaskController$Task;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 388
    .local v1, "ie":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getInstance()Lcom/akop/bach/TaskController;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/akop/bach/TaskController;->inst:Lcom/akop/bach/TaskController;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/akop/bach/TaskController;

    invoke-direct {v0}, Lcom/akop/bach/TaskController;-><init>()V

    sput-object v0, Lcom/akop/bach/TaskController;->inst:Lcom/akop/bach/TaskController;

    .line 258
    :cond_0
    sget-object v0, Lcom/akop/bach/TaskController;->inst:Lcom/akop/bach/TaskController;

    return-object v0
.end method


# virtual methods
.method public acceptFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsFriendManagement;
    .param p2, "friendId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 547
    new-instance v0, Lcom/akop/bach/TaskController$10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptFriend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriendManagement;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$10;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 556
    return-void
.end method

.method public addFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsFriendManagement;
    .param p2, "friendId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 515
    new-instance v0, Lcom/akop/bach/TaskController$8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFriend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriendManagement;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$8;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 524
    return-void
.end method

.method public addListener(Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 399
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/akop/bach/TaskController$TaskListener;->setActive(Z)V

    .line 401
    iget-object v1, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {p0}, Lcom/akop/bach/TaskController;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p1}, Lcom/akop/bach/TaskController$TaskListener;->onControllerBusy()V

    .line 408
    :cond_0
    return-void

    .line 404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsFriendManagement;
    .param p2, "friendId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 579
    new-instance v0, Lcom/akop/bach/TaskController$12;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFriend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriendManagement;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$12;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 588
    return-void
.end method

.method public compareAchievements(Lcom/akop/bach/SupportsCompareAchievements;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/SupportsCompareAchievements;
    .param p2, "userId"    # Ljava/lang/Object;
    .param p3, "gameId"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 672
    new-instance v0, Lcom/akop/bach/TaskController$18;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareAchievements:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsCompareAchievements;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/akop/bach/TaskController$18;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsCompareAchievements;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 681
    return-void
.end method

.method public compareGames(Lcom/akop/bach/SupportsCompareGames;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/SupportsCompareGames;
    .param p2, "userId"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 656
    new-instance v0, Lcom/akop/bach/TaskController$17;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareGames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsCompareGames;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/TaskController$17;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsCompareGames;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 665
    return-void
.end method

.method public deleteAccount(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 434
    new-instance v0, Lcom/akop/bach/TaskController$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/TaskController$2;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLcom/akop/bach/BasicAccount;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 442
    return-void
.end method

.method public deleteMessage(Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsMessaging;
    .param p2, "messageId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 624
    new-instance v0, Lcom/akop/bach/TaskController$15;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsMessaging;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$15;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 633
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/akop/bach/TaskController;->mBusy:Z

    return v0
.end method

.method public rejectFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsFriendManagement;
    .param p2, "friendId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 563
    new-instance v0, Lcom/akop/bach/TaskController$11;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectFriend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriendManagement;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$11;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 572
    return-void
.end method

.method public removeFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsFriendManagement;
    .param p2, "friendId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 531
    new-instance v0, Lcom/akop/bach/TaskController$9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFriend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriendManagement;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$9;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 540
    return-void
.end method

.method public removeListener(Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/akop/bach/TaskController$TaskListener;->setActive(Z)V

    .line 414
    iget-object v1, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 268
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 274
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/akop/bach/TaskController$Task;

    iput-object v8, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    .line 278
    iget-object v9, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 280
    :try_start_1
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-object v10, v10, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 281
    .local v0, "containsListener":Z
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    :try_start_2
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-boolean v8, v8, Lcom/akop/bach/TaskController$Task;->alwaysRun:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-object v8, v8, Lcom/akop/bach/TaskController$Task;->listener:Lcom/akop/bach/TaskController$TaskListener;

    if-eqz v8, :cond_0

    if-eqz v0, :cond_6

    .line 287
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/akop/bach/TaskController;->mBusy:Z

    .line 290
    iget-object v9, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 292
    :try_start_3
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/TaskController$TaskListener;

    .line 294
    .local v4, "l":Lcom/akop/bach/TaskController$TaskListener;
    invoke-virtual {v4}, Lcom/akop/bach/TaskController$TaskListener;->onControllerBusy()V

    .line 295
    invoke-virtual {v4}, Lcom/akop/bach/TaskController$TaskListener;->onTaskStarted()V

    goto :goto_1

    .line 297
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 338
    .end local v0    # "containsListener":Z
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    const-string v8, "Error running command"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 348
    :cond_1
    iput-object v13, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    .line 349
    iput-boolean v11, p0, Lcom/akop/bach/TaskController;->mBusy:Z

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 348
    :catchall_2
    move-exception v8

    iput-object v13, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    .line 349
    iput-boolean v11, p0, Lcom/akop/bach/TaskController;->mBusy:Z

    throw v8

    .line 297
    .restart local v0    # "containsListener":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 300
    :try_start_9
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-boolean v8, v8, Lcom/akop/bach/TaskController$Task;->isDisabled:Z

    if-nez v8, :cond_3

    .line 301
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    invoke-virtual {v8}, Lcom/akop/bach/TaskController$Task;->run()V

    .line 303
    :cond_3
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    iget-object v2, v8, Lcom/akop/bach/TaskController$Task;->taskError:Ljava/lang/Exception;

    .line 304
    .local v2, "error":Ljava/lang/Exception;
    if-eqz v2, :cond_6

    .line 306
    const/4 v5, 0x0

    .line 308
    .local v5, "notified":I
    iget-object v9, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 310
    :try_start_a
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v3

    move v6, v5

    .end local v5    # "notified":I
    .local v6, "notified":I
    :goto_2
    :try_start_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/TaskController$TaskListener;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 311
    .restart local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "notified":I
    .restart local v5    # "notified":I
    :try_start_c
    invoke-virtual {v4, v6, v2}, Lcom/akop/bach/TaskController$TaskListener;->onAnyTaskFailed(ILjava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move v6, v5

    .end local v5    # "notified":I
    .restart local v6    # "notified":I
    goto :goto_2

    .line 312
    .end local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    :cond_4
    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 314
    :try_start_e
    instance-of v8, v2, Lcom/akop/bach/parser/AuthenticationException;

    if-eqz v8, :cond_6

    .line 319
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 320
    const-string v8, "Received authentication error - clearing controller\'s tasks"

    invoke-static {v8}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 322
    :cond_5
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/akop/bach/TaskController$Task;

    .line 323
    .local v7, "task":Lcom/akop/bach/TaskController$Task;
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/akop/bach/TaskController$Task;->isDisabled:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    .line 312
    .end local v6    # "notified":I
    .end local v7    # "task":Lcom/akop/bach/TaskController$Task;
    .restart local v5    # "notified":I
    :catchall_3
    move-exception v8

    :goto_4
    :try_start_f
    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v8

    .line 329
    .end local v2    # "error":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "notified":I
    :cond_6
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    if-ge v8, v12, :cond_8

    .line 331
    iget-object v9, p0, Lcom/akop/bach/TaskController;->mListenerLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 333
    :try_start_11
    iget-object v8, p0, Lcom/akop/bach/TaskController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/TaskController$TaskListener;

    .line 334
    .restart local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    invoke-virtual {v4}, Lcom/akop/bach/TaskController$TaskListener;->onAllTasksCompleted()V

    goto :goto_5

    .line 335
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Lcom/akop/bach/TaskController$TaskListener;
    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_13
    monitor-exit v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 348
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    iput-object v13, p0, Lcom/akop/bach/TaskController;->mCurrentTask:Lcom/akop/bach/TaskController$Task;

    .line 349
    iput-boolean v11, p0, Lcom/akop/bach/TaskController;->mBusy:Z

    goto/16 :goto_0

    .line 312
    .restart local v2    # "error":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "notified":I
    :catchall_5
    move-exception v8

    move v5, v6

    .end local v6    # "notified":I
    .restart local v5    # "notified":I
    goto :goto_4
.end method

.method public runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 6
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p3, "listener"    # Lcom/akop/bach/TaskController$TaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/BasicAccount;",
            "Lcom/akop/bach/TaskController$CustomTask",
            "<*>;",
            "Lcom/akop/bach/TaskController$TaskListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 686
    .local p2, "job":Lcom/akop/bach/TaskController$CustomTask;, "Lcom/akop/bach/TaskController$CustomTask<*>;"
    new-instance v0, Lcom/akop/bach/TaskController$19;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/TaskController$19;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/TaskController$CustomTask;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 695
    return-void
.end method

.method public sendMessage(Lcom/akop/bach/SupportsMessaging;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 10
    .param p1, "account"    # Lcom/akop/bach/SupportsMessaging;
    .param p2, "recipients"    # [Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "requestParam"    # Ljava/lang/Object;
    .param p5, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 641
    new-instance v0, Lcom/akop/bach/TaskController$16;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsMessaging;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p5

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/akop/bach/TaskController$16;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsMessaging;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 650
    return-void
.end method

.method public synchronizeAchievements(Lcom/akop/bach/SupportsAchievements;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/SupportsAchievements;
    .param p2, "gameId"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 472
    new-instance v0, Lcom/akop/bach/TaskController$5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeAchievements:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/TaskController$5;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsAchievements;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 480
    return-void
.end method

.method public synchronizeGames(Lcom/akop/bach/SupportsGames;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 6
    .param p1, "account"    # Lcom/akop/bach/SupportsGames;
    .param p2, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 458
    new-instance v0, Lcom/akop/bach/TaskController$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeGames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsGames;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/TaskController$4;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsGames;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 466
    return-void
.end method

.method public synchronizeMessage(Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/SupportsMessaging;
    .param p2, "messageId"    # Ljava/lang/Object;
    .param p3, "requestParam"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 608
    new-instance v0, Lcom/akop/bach/TaskController$14;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsMessaging;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/akop/bach/TaskController$14;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;ZLjava/lang/Object;Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 617
    return-void
.end method

.method public synchronizeMessages(Lcom/akop/bach/SupportsMessaging;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 6
    .param p1, "account"    # Lcom/akop/bach/SupportsMessaging;
    .param p2, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 593
    new-instance v0, Lcom/akop/bach/TaskController$13;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeMessages:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsMessaging;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/TaskController$13;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsMessaging;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 601
    return-void
.end method

.method public synchronizeSummary(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 6
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 446
    new-instance v0, Lcom/akop/bach/TaskController$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeSummary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/TaskController$3;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/BasicAccount;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 454
    return-void
.end method

.method public updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 6
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;
    .param p2, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 485
    new-instance v0, Lcom/akop/bach/TaskController$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeFriends:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriends;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/TaskController$6;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsFriends;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 493
    return-void
.end method

.method public updateFriendProfile(Lcom/akop/bach/SupportsFriends;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/SupportsFriends;
    .param p2, "friendId"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 499
    new-instance v0, Lcom/akop/bach/TaskController$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeFriendSummary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/akop/bach/SupportsFriends;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/TaskController$7;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/SupportsFriends;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 508
    return-void
.end method

.method public validateAccount(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V
    .locals 6
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "listener"    # Lcom/akop/bach/TaskController$TaskListener;

    .prologue
    .line 422
    new-instance v0, Lcom/akop/bach/TaskController$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/TaskController$1;-><init>(Lcom/akop/bach/TaskController;Ljava/lang/String;Lcom/akop/bach/Account;Lcom/akop/bach/TaskController$TaskListener;Lcom/akop/bach/BasicAccount;)V

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController;->addTask(Lcom/akop/bach/TaskController$Task;)Z

    .line 430
    return-void
.end method

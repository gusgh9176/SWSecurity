.class public Lcom/akop/bach/service/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/service/NotificationService$AccountSchedule;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.akop.bach.intent.action.SERVICE_CANCEL"

.field private static final ACTION_RESCHEDULE:Ljava/lang/String; = "com.akop.bach.intent.action.SERVICE_RESCHEDULE"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "com.akop.bach.intent.action.SERVICE_UPDATE"

.field protected static mSchedules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/akop/bach/service/NotificationService$AccountSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private static mWl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/service/NotificationService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/service/NotificationService;
    .param p1, "x1"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/service/NotificationService;->update(J)V

    return-void
.end method

.method protected static acquireWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-object v1, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 99
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, " ++++++++ ACQUIRE WAKE LOCK ++++++++ "

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 102
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "Service Wake Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 105
    sget-object v1, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 107
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->acquireWakeLock(Landroid/content/Context;)V

    .line 129
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/akop/bach/service/NotificationService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const-string v2, "com.akop.bach.intent.action.SERVICE_RESCHEDULE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static actionUpdate(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkId"    # J

    .prologue
    .line 146
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->acquireWakeLock(Landroid/content/Context;)V

    .line 150
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/akop/bach/service/NotificationService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    const-string v2, "com.akop.bach.intent.action.SERVICE_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "checkId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private cancel()V
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "SparkService/cancel: canceling alarms"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 217
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/akop/bach/service/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 218
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/akop/bach/service/NotificationService;->createAlarmIntent(J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 219
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 220
    return-void
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "action":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "com.akop.bach.intent.action.SERVICE_RESCHEDULE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 259
    :cond_1
    if-nez p1, :cond_2

    .line 261
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    const-string v4, "SparkService/onStart: Intent is null, so rescheduling"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 267
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 268
    const-string v4, "SparkService/onStart @ %s: reschedule"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_3
    invoke-direct {p0}, Lcom/akop/bach/service/NotificationService;->setupSchedules()V

    .line 273
    invoke-direct {p0}, Lcom/akop/bach/service/NotificationService;->reschedule()V

    .line 274
    invoke-virtual {p0, p2}, Lcom/akop/bach/service/NotificationService;->stopSelf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    .line 329
    :cond_4
    :goto_0
    return-void

    .line 278
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    throw v4

    .line 281
    :cond_5
    const-string v4, "com.akop.bach.intent.action.SERVICE_CANCEL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 285
    :try_start_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 286
    const-string v4, "SparkService/onStart @ %s: cancel"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_6
    invoke-direct {p0}, Lcom/akop/bach/service/NotificationService;->cancel()V

    .line 290
    invoke-virtual {p0, p2}, Lcom/akop/bach/service/NotificationService;->stopSelf(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    throw v4

    .line 297
    :cond_7
    const-string v4, "com.akop.bach.intent.action.SERVICE_UPDATE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 301
    :try_start_2
    const-string v4, "checkId"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 303
    .local v0, "accountId":J
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/akop/bach/service/NotificationService$1;

    invoke-direct {v5, p0, v0, v1, p2}, Lcom/akop/bach/service/NotificationService$1;-><init>(Lcom/akop/bach/service/NotificationService;JI)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 324
    .end local v0    # "accountId":J
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected static releaseWakeLock(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget-object v0, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, " -------- RELEASE WAKE LOCK -------- "

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 116
    :cond_0
    sget-object v0, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 119
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/akop/bach/service/NotificationService;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 121
    :cond_2
    return-void
.end method

.method private reschedule()V
    .locals 20

    .prologue
    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 175
    .local v12, "timeNow":J
    const-wide v6, 0x7fffffffffffffffL

    .line 176
    .local v6, "nextCheckTime":J
    const/4 v4, 0x0

    .line 178
    .local v4, "nextAccount":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    sget-object v14, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    monitor-enter v14

    .line 180
    :try_start_0
    sget-object v11, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/akop/bach/service/NotificationService$AccountSchedule;

    .line 182
    .local v10, "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    iget-wide v8, v10, Lcom/akop/bach/service/NotificationService$AccountSchedule;->nextSyncMs:J

    .line 184
    .local v8, "nextSyncMs":J
    iget-wide v0, v10, Lcom/akop/bach/service/NotificationService$AccountSchedule;->lastSyncMs:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-lez v11, :cond_1

    cmp-long v11, v8, v12

    if-gez v11, :cond_2

    .line 186
    :cond_1
    const-wide/16 v6, 0x0

    .line 187
    move-object v4, v10

    goto :goto_0

    .line 189
    :cond_2
    cmp-long v11, v8, v6

    if-gez v11, :cond_0

    .line 191
    move-wide v6, v8

    .line 192
    move-object v4, v10

    goto :goto_0

    .line 195
    .end local v8    # "nextSyncMs":J
    .end local v10    # "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    :cond_3
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-nez v4, :cond_4

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/akop/bach/service/NotificationService;->cancel()V

    .line 210
    :goto_1
    return-void

    .line 195
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 203
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 204
    const-string v11, "SparkService/reschedule: next up is %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v4}, Lcom/akop/bach/service/NotificationService$AccountSchedule;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_5
    const-string v11, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/akop/bach/service/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 208
    .local v2, "alarmMgr":Landroid/app/AlarmManager;
    iget-wide v14, v4, Lcom/akop/bach/service/NotificationService$AccountSchedule;->accountId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/akop/bach/service/NotificationService;->createAlarmIntent(J)Landroid/app/PendingIntent;

    move-result-object v5

    .line 209
    .local v5, "pi":Landroid/app/PendingIntent;
    const/4 v11, 0x2

    invoke-virtual {v2, v11, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private setupSchedules()V
    .locals 12

    .prologue
    .line 360
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    const-string v7, "SparkService/setupSchedules"

    invoke-static {v7}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 363
    :cond_0
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/Preferences;->getAccounts()[Lcom/akop/bach/BasicAccount;

    move-result-object v1

    .line 365
    .local v1, "accounts":[Lcom/akop/bach/BasicAccount;
    sget-object v8, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    monitor-enter v8

    .line 367
    :try_start_0
    sget-object v7, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 368
    move-object v2, v1

    .local v2, "arr$":[Lcom/akop/bach/BasicAccount;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v2, v4

    .line 370
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->isAutoSyncEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 372
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 373
    const-string v7, "Creating a new account schedule for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_1
    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->createServiceClient()Lcom/akop/bach/service/ServiceClient;

    move-result-object v3

    .line 377
    .local v3, "client":Lcom/akop/bach/service/ServiceClient;
    if-eqz v3, :cond_2

    .line 379
    new-instance v6, Lcom/akop/bach/service/NotificationService$AccountSchedule;

    invoke-direct {v6, v0, p0}, Lcom/akop/bach/service/NotificationService$AccountSchedule;-><init>(Lcom/akop/bach/BasicAccount;Landroid/content/Context;)V

    .line 380
    .local v6, "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    invoke-virtual {v3, v0}, Lcom/akop/bach/service/ServiceClient;->setupParameters(Lcom/akop/bach/BasicAccount;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lcom/akop/bach/service/NotificationService$AccountSchedule;->param:Ljava/lang/Object;

    .line 382
    sget-object v7, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .end local v3    # "client":Lcom/akop/bach/service/ServiceClient;
    .end local v6    # "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "account":Lcom/akop/bach/BasicAccount;
    :cond_3
    monitor-exit v8

    .line 387
    return-void

    .line 386
    .end local v2    # "arr$":[Lcom/akop/bach/BasicAccount;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private update(J)V
    .locals 9
    .param p1, "accountId"    # J

    .prologue
    .line 333
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    .line 334
    .local v2, "prefs":Lcom/akop/bach/Preferences;
    invoke-virtual {v2, p1, p2}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v0

    .line 336
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    if-nez v0, :cond_0

    .line 338
    const-string v4, "SparkService/update: error; account %d is NULL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->createServiceClient()Lcom/akop/bach/service/ServiceClient;

    move-result-object v1

    .line 345
    .local v1, "client":Lcom/akop/bach/service/ServiceClient;
    if-eqz v1, :cond_1

    sget-object v4, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/service/NotificationService$AccountSchedule;

    .local v3, "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {v1, v0, v3}, Lcom/akop/bach/service/ServiceClient;->update(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/service/NotificationService$AccountSchedule;)V

    .line 349
    sget-object v5, Lcom/akop/bach/service/NotificationService;->mSchedules:Ljava/util/HashMap;

    monitor-enter v5

    .line 351
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/akop/bach/service/NotificationService$AccountSchedule;->updateSyncTime(J)V

    .line 352
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v3    # "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    :cond_1
    invoke-direct {p0}, Lcom/akop/bach/service/NotificationService;->reschedule()V

    goto :goto_0

    .line 352
    .restart local v3    # "schedule":Lcom/akop/bach/service/NotificationService$AccountSchedule;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method protected createAlarmIntent(J)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "checkId"    # J

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/akop/bach/service/UpdateAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "checkId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 243
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 246
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/service/NotificationService;->handleStart(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1, p3}, Lcom/akop/bach/service/NotificationService;->handleStart(Landroid/content/Intent;I)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

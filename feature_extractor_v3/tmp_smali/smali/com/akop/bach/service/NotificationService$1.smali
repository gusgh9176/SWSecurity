.class Lcom/akop/bach/service/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/service/NotificationService;->handleStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/service/NotificationService;

.field final synthetic val$accountId:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/akop/bach/service/NotificationService;JI)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/akop/bach/service/NotificationService$1;->this$0:Lcom/akop/bach/service/NotificationService;

    iput-wide p2, p0, Lcom/akop/bach/service/NotificationService$1;->val$accountId:J

    iput p4, p0, Lcom/akop/bach/service/NotificationService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 310
    :try_start_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "SparkService/onStart @ %s: update"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/service/NotificationService$1;->this$0:Lcom/akop/bach/service/NotificationService;

    iget-wide v2, p0, Lcom/akop/bach/service/NotificationService$1;->val$accountId:J

    invoke-static {v0, v2, v3}, Lcom/akop/bach/service/NotificationService;->access$000(Lcom/akop/bach/service/NotificationService;J)V

    .line 315
    iget-object v0, p0, Lcom/akop/bach/service/NotificationService$1;->this$0:Lcom/akop/bach/service/NotificationService;

    iget v1, p0, Lcom/akop/bach/service/NotificationService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/akop/bach/service/NotificationService;->stopSelf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v0, p0, Lcom/akop/bach/service/NotificationService$1;->this$0:Lcom/akop/bach/service/NotificationService;

    invoke-static {v0}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    .line 321
    return-void

    .line 319
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/akop/bach/service/NotificationService$1;->this$0:Lcom/akop/bach/service/NotificationService;

    invoke-static {v1}, Lcom/akop/bach/service/NotificationService;->releaseWakeLock(Landroid/content/Context;)V

    throw v0
.end method

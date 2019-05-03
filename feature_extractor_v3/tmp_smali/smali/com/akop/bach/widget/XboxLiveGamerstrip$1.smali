.class final Lcom/akop/bach/widget/XboxLiveGamerstrip$1;
.super Ljava/lang/Object;
.source "XboxLiveGamerstrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/widget/XboxLiveGamerstrip;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;

.field final synthetic val$appWidgetId:I

.field final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceRefresh:Z

.field final synthetic val$views:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcom/akop/bach/XboxLiveAccount;ZLandroid/content/Context;Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iput-boolean p2, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$forceRefresh:Z

    iput-object p3, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$views:Landroid/widget/RemoteViews;

    iput p5, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetId:I

    iput-object p6, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 391
    :try_start_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "XboxLiveGamerstrip[%s]: Updating account data..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v6}, Lcom/akop/bach/XboxLiveAccount;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastSummaryUpdate()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 400
    .local v2, "timeDiff":J
    iget-boolean v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$forceRefresh:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getSummaryRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/akop/bach/XboxLiveAccount;->updateProfile(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v2    # "timeDiff":J
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    const-string v1, "XboxLiveGamerstrip[%s]: Updating games list..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v6}, Lcom/akop/bach/XboxLiveAccount;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastGameUpdate()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 418
    .restart local v2    # "timeDiff":J
    iget-boolean v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$forceRefresh:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getGameHistoryRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 419
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/akop/bach/XboxLiveAccount;->updateGames(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    .end local v2    # "timeDiff":J
    :cond_5
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v4, v5}, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->load(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$views:Landroid/widget/RemoteViews;

    iget v6, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetId:I

    invoke-static {v1, v4, v5, v6}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->access$200(Landroid/content/Context;Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    iget-object v1, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetId:I

    iget-object v5, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$views:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 436
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v5, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$appWidgetId:I

    iget-object v6, p0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;->val$views:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    throw v1

    .line 421
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

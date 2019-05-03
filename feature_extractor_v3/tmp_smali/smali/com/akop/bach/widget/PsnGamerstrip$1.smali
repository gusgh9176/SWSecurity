.class final Lcom/akop/bach/widget/PsnGamerstrip$1;
.super Ljava/lang/Object;
.source "PsnGamerstrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/widget/PsnGamerstrip;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/akop/bach/PsnAccount;

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceRefresh:Z

.field final synthetic val$views:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcom/akop/bach/PsnAccount;ZLandroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    iput-boolean p2, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$forceRefresh:Z

    iput-object p3, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$views:Landroid/widget/RemoteViews;

    iput p5, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 412
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "PsnGamerstrip[%s]: Updating account data..."

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getLastSummaryUpdate()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 421
    .local v2, "timeDiff":J
    iget-boolean v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$forceRefresh:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getSummaryRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    iget-object v4, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/akop/bach/PsnAccount;->updateProfile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v2    # "timeDiff":J
    :cond_2
    :goto_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    const-string v1, "PsnGamerstrip[%s]: Updating games list..."

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v5}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getLastGameUpdate()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 439
    .restart local v2    # "timeDiff":J
    iget-boolean v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$forceRefresh:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getGameHistoryRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    iget-object v4, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/akop/bach/PsnAccount;->updateGames(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    .end local v2    # "timeDiff":J
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$account:Lcom/akop/bach/PsnAccount;

    invoke-static {v4, v5}, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->load(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$views:Landroid/widget/RemoteViews;

    iget v6, p0, Lcom/akop/bach/widget/PsnGamerstrip$1;->val$appWidgetId:I

    invoke-static {v1, v4, v5, v6}, Lcom/akop/bach/widget/PsnGamerstrip;->access$300(Landroid/content/Context;Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V

    .line 452
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 445
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.class public abstract Lcom/akop/bach/service/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field protected static final DEFAULT_LIGHTS_COLOR:I = -0x1

.field protected static final DEFAULT_LIGHTS_OFF_MS:I = 0x2710

.field protected static final DEFAULT_LIGHTS_ON_MS:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/akop/bach/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method protected abstract notify(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/service/NotificationService$AccountSchedule;)V
.end method

.method public abstract setupParameters(Lcom/akop/bach/BasicAccount;)Ljava/lang/Object;
.end method

.method protected abstract synchronize(Lcom/akop/bach/BasicAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation
.end method

.method public update(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/service/NotificationService$AccountSchedule;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "schedule"    # Lcom/akop/bach/service/NotificationService$AccountSchedule;

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/service/ServiceClient;->synchronize(Lcom/akop/bach/BasicAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/service/ServiceClient;->notify(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/service/NotificationService$AccountSchedule;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :cond_1
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.class public Lcom/akop/bach/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static final ConfigType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/akop/bach/configurations/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "bach"

.field private static sInstance:Lcom/akop/bach/App;


# instance fields
.field private mConfig:Lcom/akop/bach/configurations/AppConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/akop/bach/configurations/ProdConfig;

    sput-object v0, Lcom/akop/bach/App;->ConfigType:Ljava/lang/Class;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/akop/bach/App;->sInstance:Lcom/akop/bach/App;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static createAccountFromAuthority(Landroid/content/Context;Ljava/lang/String;)Lcom/akop/bach/BasicAccount;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "com.akop.bach.xboxliveprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/akop/bach/XboxLiveAccount;

    invoke-direct {v0, p0}, Lcom/akop/bach/XboxLiveAccount;-><init>(Landroid/content/Context;)V

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-string v0, "com.akop.bach.psnprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/akop/bach/PsnAccount;

    invoke-direct {v0, p0}, Lcom/akop/bach/PsnAccount;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfig()Lcom/akop/bach/configurations/AppConfig;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/akop/bach/App;->sInstance:Lcom/akop/bach/App;

    iget-object v0, v0, Lcom/akop/bach/App;->mConfig:Lcom/akop/bach/configurations/AppConfig;

    return-object v0
.end method

.method public static getInstance()Lcom/akop/bach/App;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/akop/bach/App;->sInstance:Lcom/akop/bach/App;

    return-object v0
.end method

.method public static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "bach"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void
.end method

.method public static varargs logv(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 90
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "bach"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 60
    :try_start_0
    sget-object v1, Lcom/akop/bach/App;->ConfigType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/configurations/AppConfig;

    iput-object v1, p0, Lcom/akop/bach/App;->mConfig:Lcom/akop/bach/configurations/AppConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sput-object p0, Lcom/akop/bach/App;->sInstance:Lcom/akop/bach/App;

    .line 69
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->actionReschedule(Landroid/content/Context;)V

    .line 70
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Configuration not valid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showAboutDialog(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/akop/bach/activity/About;->actionShowAbout(Landroid/content/Context;)V

    .line 51
    return-void
.end method

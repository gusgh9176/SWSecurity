.class public Lcom/akop/bach/service/UpdateAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {p1}, Lcom/akop/bach/service/NotificationService;->actionReschedule(Landroid/content/Context;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "checkId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/akop/bach/service/NotificationService;->actionUpdate(Landroid/content/Context;J)V

    goto :goto_0
.end method

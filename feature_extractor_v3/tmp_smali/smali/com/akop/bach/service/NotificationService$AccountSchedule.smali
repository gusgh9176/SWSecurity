.class public Lcom/akop/bach/service/NotificationService$AccountSchedule;
.super Ljava/lang/Object;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/service/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountSchedule"
.end annotation


# instance fields
.field public accountId:J

.field private description:Ljava/lang/String;

.field public lastSyncMs:J

.field public nextSyncMs:J

.field public param:Ljava/lang/Object;

.field public syncFreqMs:J


# direct methods
.method public constructor <init>(Lcom/akop/bach/BasicAccount;Landroid/content/Context;)V
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->description:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->accountId:J

    .line 65
    iput-wide v2, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->lastSyncMs:J

    .line 66
    iput-wide v2, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->nextSyncMs:J

    .line 67
    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getSyncPeriod()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->syncFreqMs:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->param:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 80
    const-string v0, "%s: last @ %.02f; next @ %.02f; now %.02f"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->lastSyncMs:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->nextSyncMs:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSyncTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->lastSyncMs:J

    .line 74
    iget-wide v0, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->syncFreqMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->nextSyncMs:J

    .line 75
    return-void
.end method

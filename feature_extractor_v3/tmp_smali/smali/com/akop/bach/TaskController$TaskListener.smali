.class public Lcom/akop/bach/TaskController$TaskListener;
.super Ljava/lang/Object;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskListener"
.end annotation


# instance fields
.field private mActive:Z

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/akop/bach/TaskController$TaskListener;->mId:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/TaskController$TaskListener;->mActive:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/akop/bach/TaskController$TaskListener;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/akop/bach/TaskController$TaskListener;->mActive:Z

    return v0
.end method

.method public onAllTasksCompleted()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onAnyTaskFailed(ILjava/lang/Exception;)V
    .locals 0
    .param p1, "notified"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 85
    return-void
.end method

.method public onControllerBusy()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onTaskFailed(Lcom/akop/bach/Account;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 89
    return-void
.end method

.method public onTaskStarted()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "account"    # Lcom/akop/bach/Account;
    .param p2, "requestParam"    # Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 93
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/akop/bach/TaskController$TaskListener;->mActive:Z

    .line 98
    return-void
.end method

.class public abstract Lcom/akop/bach/TaskController$CustomTask;
.super Ljava/lang/Object;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/akop/bach/TaskController$CustomTask;, "Lcom/akop/bach/TaskController$CustomTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/TaskController$CustomTask;->mResult:Ljava/lang/Object;

    .line 113
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/akop/bach/TaskController$CustomTask;, "Lcom/akop/bach/TaskController$CustomTask<TT;>;"
    iget-object v0, p0, Lcom/akop/bach/TaskController$CustomTask;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract runTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/akop/bach/TaskController$CustomTask;, "Lcom/akop/bach/TaskController$CustomTask<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/akop/bach/TaskController$CustomTask;->mResult:Ljava/lang/Object;

    .line 118
    return-void
.end method

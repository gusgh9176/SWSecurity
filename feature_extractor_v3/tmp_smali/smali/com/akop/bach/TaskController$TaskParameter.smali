.class Lcom/akop/bach/TaskController$TaskParameter;
.super Ljava/lang/Object;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskParameter"
.end annotation


# instance fields
.field public result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/akop/bach/TaskController;


# direct methods
.method public constructor <init>(Lcom/akop/bach/TaskController;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/akop/bach/TaskController$TaskParameter;->this$0:Lcom/akop/bach/TaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/TaskController$TaskParameter;->result:Ljava/lang/Object;

    .line 47
    return-void
.end method

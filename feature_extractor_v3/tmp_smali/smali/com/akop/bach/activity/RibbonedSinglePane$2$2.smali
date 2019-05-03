.class Lcom/akop/bach/activity/RibbonedSinglePane$2$2;
.super Ljava/lang/Object;
.source "RibbonedSinglePane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/RibbonedSinglePane$2;->onAllTasksCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/activity/RibbonedSinglePane$2;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedSinglePane$2;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2$2;->this$1:Lcom/akop/bach/activity/RibbonedSinglePane$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2$2;->this$1:Lcom/akop/bach/activity/RibbonedSinglePane$2;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedSinglePane$2;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedSinglePane;->toggleProgressBar(Z)V

    .line 106
    return-void
.end method

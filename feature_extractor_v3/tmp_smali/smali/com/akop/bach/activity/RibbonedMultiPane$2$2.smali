.class Lcom/akop/bach/activity/RibbonedMultiPane$2$2;
.super Ljava/lang/Object;
.source "RibbonedMultiPane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/RibbonedMultiPane$2;->onAllTasksCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/activity/RibbonedMultiPane$2;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane$2;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2$2;->this$1:Lcom/akop/bach/activity/RibbonedMultiPane$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2$2;->this$1:Lcom/akop/bach/activity/RibbonedMultiPane$2;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedMultiPane;->toggleProgressBar(Z)V

    .line 108
    return-void
.end method

.class Lcom/akop/bach/activity/RibbonedMultiPane$2;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "RibbonedMultiPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedMultiPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedMultiPane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane;->mHandler:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    new-instance v1, Lcom/akop/bach/activity/RibbonedMultiPane$2$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$2$2;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane$2;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public onAnyTaskFailed(ILjava/lang/Exception;)V
    .locals 4
    .param p1, "notified"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-static {v2, p2}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/akop/bach/fragment/ErrorDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/Exception;)Lcom/akop/bach/fragment/ErrorDialogFragment;

    move-result-object v0

    .line 117
    .local v0, "frag":Lcom/akop/bach/fragment/ErrorDialogFragment;
    iget-object v2, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-virtual {v2}, Lcom/akop/bach/activity/RibbonedMultiPane;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "errorDialog"

    invoke-virtual {v0, v2, v3}, Lcom/akop/bach/fragment/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onControllerBusy()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane;->mHandler:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    new-instance v1, Lcom/akop/bach/activity/RibbonedMultiPane$2$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/RibbonedMultiPane$2$1;-><init>(Lcom/akop/bach/activity/RibbonedMultiPane$2;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

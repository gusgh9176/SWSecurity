.class Lcom/akop/bach/activity/RibbonedSinglePane$2;
.super Lcom/akop/bach/TaskController$TaskListener;
.source "RibbonedSinglePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedSinglePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedSinglePane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTasksCompleted()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedSinglePane;->mHandler:Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

    new-instance v1, Lcom/akop/bach/activity/RibbonedSinglePane$2$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$2$2;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane$2;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public onAnyTaskFailed(ILjava/lang/Exception;)V
    .locals 4
    .param p1, "notified"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-static {v2, p2}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/akop/bach/fragment/ErrorDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/Exception;)Lcom/akop/bach/fragment/ErrorDialogFragment;

    move-result-object v0

    .line 115
    .local v0, "frag":Lcom/akop/bach/fragment/ErrorDialogFragment;
    iget-object v2, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-virtual {v2}, Lcom/akop/bach/activity/RibbonedSinglePane;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "errorDialog"

    invoke-virtual {v0, v2, v3}, Lcom/akop/bach/fragment/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onControllerBusy()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$2;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedSinglePane;->mHandler:Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

    new-instance v1, Lcom/akop/bach/activity/RibbonedSinglePane$2$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/activity/RibbonedSinglePane$2$1;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane$2;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

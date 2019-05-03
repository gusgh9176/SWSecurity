.class Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;
.super Landroid/os/Handler;
.source "AccountSetupTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSetupTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskHandler"
.end annotation


# static fields
.field private static final MSG_COMPLETE:I = 0x2

.field private static final MSG_SHOW_ERROR:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/AccountSetupTest;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/AccountSetupTest;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/AccountSetupTest;Lcom/akop/bach/activity/AccountSetupTest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/AccountSetupTest;
    .param p2, "x1"    # Lcom/akop/bach/activity/AccountSetupTest$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;-><init>(Lcom/akop/bach/activity/AccountSetupTest;)V

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$000(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$000(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    const v3, 0x7f080049

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/akop/bach/activity/AccountSetupTest;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$100(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 82
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$200(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$100(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v1}, Lcom/akop/bach/activity/AccountSetupTest;->access$100(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 86
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$000(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSetupTest;

    invoke-static {v0}, Lcom/akop/bach/activity/AccountSetupTest;->access$100(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v1, 0x1

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.class public Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;
.super Landroid/os/Handler;
.source "ServerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/ServerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServerStatusHandler"
.end annotation


# static fields
.field private static final MSG_REFRESH:I = 0x3e8

.field private static final MSG_SHOW_THROBBER:I = 0x3e9


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;


# direct methods
.method protected constructor <init>(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/XboxLive$LiveStatusInfo;

    invoke-static {v1, v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->access$002(Lcom/akop/bach/activity/xboxlive/ServerStatus;Lcom/akop/bach/XboxLive$LiveStatusInfo;)Lcom/akop/bach/XboxLive$LiveStatusInfo;

    .line 66
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->access$100(Lcom/akop/bach/activity/xboxlive/ServerStatus;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->setProgressBarIndeterminateVisibility(Z)V

    .line 71
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/ServerStatus;

    const v2, 0x7f0b00fb

    invoke-virtual {v0, v2}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v1, 0x4

    goto :goto_2

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showProgressBar(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 84
    const/16 v2, 0x3e9

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/16 v0, 0x3e8

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/ServerStatus$ServerStatusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method

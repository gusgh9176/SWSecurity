.class Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskHandler"
.end annotation


# static fields
.field private static final MSG_ALLOW_EDITS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageCompose;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageCompose;Lcom/akop/bach/activity/xboxlive/MessageCompose$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageCompose;
    .param p2, "x1"    # Lcom/akop/bach/activity/xboxlive/MessageCompose$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;-><init>(Lcom/akop/bach/activity/xboxlive/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public allowEdits(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->access$000(Lcom/akop/bach/activity/xboxlive/MessageCompose;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;->this$0:Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->access$000(Lcom/akop/bach/activity/xboxlive/MessageCompose;)Landroid/widget/Button;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

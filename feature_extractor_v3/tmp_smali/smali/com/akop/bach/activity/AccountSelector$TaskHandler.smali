.class Lcom/akop/bach/activity/AccountSelector$TaskHandler;
.super Landroid/os/Handler;
.source "AccountSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskHandler"
.end annotation


# static fields
.field private static final MSG_NOTIFY_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/AccountSelector;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/AccountSelector;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSelector$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/AccountSelector;Lcom/akop/bach/activity/AccountSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/AccountSelector;
    .param p2, "x1"    # Lcom/akop/bach/activity/AccountSelector$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/AccountSelector$TaskHandler;-><init>(Lcom/akop/bach/activity/AccountSelector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSelector$TaskHandler;->this$0:Lcom/akop/bach/activity/AccountSelector;

    invoke-virtual {v0}, Lcom/akop/bach/activity/AccountSelector;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;

    invoke-virtual {v0}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v1, 0x1

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSelector$TaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.class Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;
.super Landroid/os/Handler;
.source "FriendCoverflow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/FriendCoverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendHandler"
.end annotation


# static fields
.field private static final MSG_UPDATE_SYNC_TIME:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/xboxlive/FriendCoverflow;
    .param p2, "x1"    # Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 193
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 219
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 200
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    const v2, 0x7f0800e1

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "syncText":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->access$100(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    .end local v0    # "syncText":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    const v10, 0x7f0800ae

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    iget-object v2, v2, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0x240c8400

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "syncText":Ljava/lang/String;
    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSyncTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    const/4 v1, 0x1

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendHandler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void
.end method

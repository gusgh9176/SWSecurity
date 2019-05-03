.class public Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;
.super Landroid/os/Handler;
.source "ScrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/ScrollingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListUpdater"
.end annotation


# static fields
.field private static final MSG_NOTIFY_CHANGE:I = 0x2

.field private static final MSG_REINITIALIZE:I = 0x3

.field private static final MSG_SET_THROBBER:I = 0x4

.field private static final MSG_UPDATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/ScrollingActivity;


# direct methods
.method protected constructor <init>(Lcom/akop/bach/activity/ScrollingActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 67
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v6, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v6, v6, Lcom/akop/bach/activity/ScrollingActivity;->mAdapterList:Ljava/util/List;

    monitor-enter v6

    .line 72
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 73
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, "start":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 75
    .local v3, "n":I
    if-ge v4, v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v5, v5, Lcom/akop/bach/activity/ScrollingActivity;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 78
    :cond_0
    move v0, v4

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 80
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 81
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v5, v5, Lcom/akop/bach/activity/ScrollingActivity;->mAdapterList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v5, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v5, v5, Lcom/akop/bach/activity/ScrollingActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    monitor-exit v6

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "n":I
    .end local v4    # "start":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 88
    :pswitch_1
    iget-object v5, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v5, v5, Lcom/akop/bach/activity/ScrollingActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v5, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    invoke-virtual {v5}, Lcom/akop/bach/activity/ScrollingActivity;->onDataUpdate()V

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v6, p0, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_2

    :goto_2
    invoke-virtual {v6, v5}, Lcom/akop/bach/activity/ScrollingActivity;->toggleProgressBar(Z)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x2

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public reinitialize()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->reinitialize(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public reinitialize(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 109
    const/4 v1, 0x3

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public showThrobber(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 128
    goto :goto_0
.end method

.method public update(Ljava/util/List;II)V
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x1

    invoke-static {p0, v1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/ScrollingActivity$ListUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

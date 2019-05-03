.class public Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;
.super Landroid/os/Handler;
.source "GameOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServerStatusHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH:I = 0x3e8

.field private static final MSG_REFRESH_SCREENSHOTS:I = 0x3ea

.field private static final MSG_SET_BMP:I = 0x3e9


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;


# direct methods
.method protected constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;

    .line 95
    .local v0, "pair":Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;
    iget-object v1, v0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;->imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 99
    .end local v0    # "pair":Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;
    :pswitch_1
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 102
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/akop/bach/XboxLive$GameOverviewInfo;

    invoke-static {v2, v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$002(Lcom/akop/bach/activity/xboxlive/GameOverview;Lcom/akop/bach/XboxLive$GameOverviewInfo;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$100(Lcom/akop/bach/activity/xboxlive/GameOverview;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$200(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$200(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 127
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method public refreshScreenshots()V
    .locals 2

    .prologue
    .line 132
    const/16 v0, 0x3ea

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    const/16 v0, 0x3e9

    new-instance v1, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method public updateStatus(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 122
    const/16 v0, 0x3e8

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    return-void
.end method

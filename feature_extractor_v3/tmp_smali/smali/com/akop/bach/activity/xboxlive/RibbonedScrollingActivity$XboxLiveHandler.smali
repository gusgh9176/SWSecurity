.class public Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;
.super Landroid/os/Handler;
.source "RibbonedScrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "XboxLiveHandler"
.end annotation


# static fields
.field private static final MSG_ERROR:I = 0x3e8

.field private static final MSG_LOADING:I = 0x3e9

.field private static final MSG_UPDATE_AVATAR:I = 0x3ea


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;


# direct methods
.method protected constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 110
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->showDialog(I)V

    .line 91
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->access$000(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->access$000(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mNoRecords:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mNoRecords:Landroid/widget/TextView;

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mNoRecords:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v2, v1, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mNoRecords:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    const/16 v0, 0x3e9

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method public showError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 117
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-static {v2, p1}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    :cond_0
    return-void
.end method

.method public updateRibbonAvatar(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    const/16 v1, 0x3ea

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method

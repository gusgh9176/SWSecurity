.class public Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;
.super Landroid/os/Handler;
.source "RibbonedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "XboxLiveHandler"
.end annotation


# static fields
.field private static final MSG_ERROR:I = 0x3e8

.field private static final MSG_LOADING:I = 0x3e9

.field private static final MSG_REFRESH:I = 0x3ec

.field private static final MSG_SHOW_THROBBER:I = 0x3eb

.field private static final MSG_SHOW_TOAST:I = 0x3ed

.field private static final MSG_UPDATE_AVATAR:I = 0x3ea


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;


# direct methods
.method protected constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 103
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->showDialog(I)V

    .line 110
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->access$000(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->access$000(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mNoRecords:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mNoRecords:Landroid/widget/TextView;

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget-object v1, v1, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mNoRecords:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget-object v2, v1, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mNoRecords:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 129
    .end local v0    # "iv":Landroid/widget/ImageView;
    :pswitch_3
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->toggleProgressBar(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 132
    :pswitch_4
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 136
    :pswitch_5
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onRefresh()V

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 187
    const/16 v1, 0x3ec

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    const/16 v0, 0x3e9

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public showError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 146
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-static {v2, p1}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :cond_0
    return-void
.end method

.method public showThrobber(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x0

    .line 167
    const/16 v3, 0x3eb

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 167
    goto :goto_0
.end method

.method public showToast(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 180
    const/16 v1, 0x3ed

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v1, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 173
    const/16 v1, 0x3ed

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method

.method public updateRibbonAvatar(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    const/16 v1, 0x3ea

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

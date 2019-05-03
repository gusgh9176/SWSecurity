.class public Lcom/akop/bach/activity/xboxlive/MessageCompose;
.super Lcom/akop/bach/activity/xboxlive/RibbonedActivity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;
    }
.end annotation


# instance fields
.field private mComposeHandler:Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;

.field private mDiscardButton:Landroid/widget/Button;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessageBody:Landroid/widget/TextView;

.field private mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientView:Landroid/widget/TextView;

.field private mSelectButton:Landroid/widget/Button;

.field private mSendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;-><init>()V

    .line 88
    new-instance v0, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;-><init>(Lcom/akop/bach/activity/xboxlive/MessageCompose;Lcom/akop/bach/activity/xboxlive/MessageCompose$1;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mComposeHandler:Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;

    .line 90
    new-instance v0, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose$1;-><init>(Lcom/akop/bach/activity/xboxlive/MessageCompose;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/MessageCompose;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageCompose;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/activity/xboxlive/MessageCompose;)Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageCompose;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mComposeHandler:Lcom/akop/bach/activity/xboxlive/MessageCompose$TaskHandler;

    return-object v0
.end method

.method public static actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gamertag"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    const-string v1, "recipient"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method private refreshRecipients()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 243
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientView:Landroid/widget/TextView;

    const v1, 0x7f08012d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientView:Landroid/widget/TextView;

    const v1, 0x7f080140

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ", "

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 203
    const/4 v6, 0x0

    .line 204
    .local v6, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 205
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080039

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 229
    :goto_1
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mMessageBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 220
    .local v2, "recipients":[Ljava/lang/String;
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showToast(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mMessageBody:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual/range {v0 .. v5}, Lcom/akop/bach/TaskController;->sendMessage(Lcom/akop/bach/SupportsMessaging;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 227
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->setResult(I)V

    .line 228
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->finish()V

    goto :goto_1
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mMessageBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 237
    .local v0, "valid":Z
    :goto_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSendButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    :cond_0
    return-void

    .line 233
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->validate()V

    .line 275
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 281
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 294
    const-string v0, "selected"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    .line 295
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->sendMessage()V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->actionSelectFriends(Landroid/app/Activity;Lcom/akop/bach/SupportsFriends;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 195
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->finish()V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x7f0b00ef
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v2, 0x7f030046

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->setContentView(I)V

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    .line 126
    const v2, 0x7f0b00ef

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSendButton:Landroid/widget/Button;

    .line 127
    const v2, 0x7f0b00f0

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mDiscardButton:Landroid/widget/Button;

    .line 128
    const v2, 0x7f0b00f2

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSelectButton:Landroid/widget/Button;

    .line 129
    const v2, 0x7f0b00f3

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mMessageBody:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f0b00f1

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientView:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSendButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mDiscardButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mMessageBody:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    if-eqz p1, :cond_3

    .line 143
    const-string v2, "recipients"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    .line 154
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "recipient"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "recipient":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 148
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_4
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 152
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mMessageBody:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 169
    :pswitch_0
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->sendMessage()V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x7f0b0127
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onPause()V

    .line 258
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 259
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onResume()V

    .line 265
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 267
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->validate()V

    .line 268
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->refreshRecipients()V

    .line 269
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v0, "recipients"

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 286
    return-void
.end method

.method protected updateRibbon()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/MessageCompose;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080044

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->updateRibbon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.class public Lcom/akop/bach/activity/playstation/FindGamer;
.super Landroid/app/Activity;
.source "FindGamer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mOk:Landroid/widget/Button;

.field private mTextbox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/app/Activity;Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "frag"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/FindGamer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mTextbox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 89
    .local v0, "valid":Z
    :goto_0
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mOk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    return-void

    .line 88
    .end local v0    # "valid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/FindGamer;->validate()V

    .line 96
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 66
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "onlineId"

    iget-object v2, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mTextbox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/akop/bach/activity/playstation/FindGamer;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FindGamer;->finish()V

    goto :goto_0

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/playstation/FindGamer;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/FindGamer;->finish()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x7f0b003a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/FindGamer;->setContentView(I)V

    .line 51
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/FindGamer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mTextbox:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/FindGamer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mOk:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/FindGamer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mCancel:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/FindGamer;->mTextbox:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/FindGamer;->validate()V

    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 107
    return-void
.end method

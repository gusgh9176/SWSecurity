.class public Lcom/akop/bach/activity/AuthenticatingAccountLogin;
.super Landroid/app/Activity;
.source "AuthenticatingAccountLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DIALOG_ERROR:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/AuthenticatingAccount;

.field private mAlert:Landroid/app/AlertDialog;

.field private mCreate:Z

.field private mEmailAddress:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionEditLoginData(Landroid/app/Activity;Lcom/akop/bach/AuthenticatingAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/akop/bach/AuthenticatingAccount;

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/AuthenticatingAccountLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 230
    return-void
.end method

.method private onTestChanges()V
    .locals 9

    .prologue
    .line 123
    iget-object v7, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "emailAddress":Ljava/lang/String;
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/akop/bach/Preferences;->getAccounts()[Lcom/akop/bach/BasicAccount;

    move-result-object v1

    .line 127
    .local v1, "accounts":[Lcom/akop/bach/BasicAccount;
    move-object v2, v1

    .local v2, "arr$":[Lcom/akop/bach/BasicAccount;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 129
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    instance-of v7, v0, Lcom/akop/bach/AuthenticatingAccount;

    if-eqz v7, :cond_0

    move-object v3, v0

    .line 131
    check-cast v3, Lcom/akop/bach/AuthenticatingAccount;

    .line 133
    .local v3, "authAccount":Lcom/akop/bach/AuthenticatingAccount;
    invoke-virtual {v3}, Lcom/akop/bach/AuthenticatingAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {v7}, Lcom/akop/bach/AuthenticatingAccount;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/akop/bach/AuthenticatingAccount;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->showDialog(I)V

    .line 138
    iget-object v7, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAlert:Landroid/app/AlertDialog;

    const v8, 0x7f08000b

    invoke-virtual {p0, v8}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    .end local v0    # "account":Lcom/akop/bach/BasicAccount;
    .end local v3    # "authAccount":Lcom/akop/bach/AuthenticatingAccount;
    :goto_1
    return-void

    .line 127
    .restart local v0    # "account":Lcom/akop/bach/BasicAccount;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "account":Lcom/akop/bach/BasicAccount;
    :cond_1
    iget-object v7, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {p0, v7}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->setupTest(Lcom/akop/bach/AuthenticatingAccount;)V

    .line 146
    iget-object v7, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    iget-boolean v8, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mCreate:Z

    invoke-static {p0, v7, v8}, Lcom/akop/bach/activity/AccountSetupTest;->actionTestSettings(Landroid/app/Activity;Lcom/akop/bach/BasicAccount;Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->resetValidation()V

    .line 190
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 195
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f030007

    return v0
.end method

.method protected isValid()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/AuthenticatingAccount;->isEmailAddressValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/AuthenticatingAccount;->isPasswordNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    if-ne p2, v0, :cond_1

    .line 215
    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->setResult(I)V

    .line 217
    iget-boolean v0, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mCreate:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {v0, p0}, Lcom/akop/bach/AuthenticatingAccount;->edit(Landroid/content/Context;)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->finish()V

    .line 222
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0011

    if-ne v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->onTestChanges()V

    .line 174
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->getLayout()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->setContentView(I)V

    .line 68
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "authority":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mCreate:Z

    .line 73
    invoke-static {p0, v0}, Lcom/akop/bach/App;->createAccountFromAuthority(Landroid/content/Context;Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/AuthenticatingAccount;

    iput-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    .line 81
    .end local v0    # "authority":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    if-nez v2, :cond_2

    .line 83
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "AuthenticatingAccountLogin: Account is null"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->finish()V

    .line 105
    :goto_1
    return-void

    .line 77
    :cond_1
    iput-boolean v5, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mCreate:Z

    .line 78
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/AuthenticatingAccount;

    iput-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    goto :goto_0

    .line 90
    :cond_2
    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f08014a

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {v4}, Lcom/akop/bach/AuthenticatingAccount;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mEmailAddress:Landroid/widget/EditText;

    .line 95
    const v2, 0x7f0b000f

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mPassword:Landroid/widget/EditText;

    .line 97
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mEmailAddress:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {v3}, Lcom/akop/bach/AuthenticatingAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAccount:Lcom/akop/bach/AuthenticatingAccount;

    invoke-virtual {v3}, Lcom/akop/bach/AuthenticatingAccount;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mOkButton:Landroid/widget/Button;

    .line 104
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 156
    :pswitch_0
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/akop/bach/activity/AuthenticatingAccountLogin$1;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin$1;-><init>(Lcom/akop/bach/activity/AuthenticatingAccountLogin;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mAlert:Landroid/app/AlertDialog;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 205
    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->resetValidation()V

    .line 206
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 199
    return-void
.end method

.method protected resetValidation()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method protected setupTest(Lcom/akop/bach/AuthenticatingAccount;)V
    .locals 3
    .param p1, "account"    # Lcom/akop/bach/AuthenticatingAccount;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "emailAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/akop/bach/AuthenticatingAccount;->setEmailAddress(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v1}, Lcom/akop/bach/AuthenticatingAccount;->setPassword(Ljava/lang/String;)V

    .line 119
    return-void
.end method

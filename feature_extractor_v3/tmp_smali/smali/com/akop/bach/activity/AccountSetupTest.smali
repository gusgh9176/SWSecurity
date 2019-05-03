.class public Lcom/akop/bach/activity/AccountSetupTest;
.super Landroid/app/Activity;
.source "AccountSetupTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/BasicAccount;

.field private mBackButton:Landroid/widget/Button;

.field private mCreateAccount:Z

.field private mHandler:Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mProfileData:Landroid/content/ContentValues;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;-><init>(Lcom/akop/bach/activity/AccountSetupTest;Lcom/akop/bach/activity/AccountSetupTest$1;)V

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mHandler:Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

    .line 116
    new-instance v0, Lcom/akop/bach/activity/AccountSetupTest$1;

    const-string v1, "AccountSetupTest"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/activity/AccountSetupTest$1;-><init>(Lcom/akop/bach/activity/AccountSetupTest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/AccountSetupTest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/AccountSetupTest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/activity/AccountSetupTest;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/AccountSetupTest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/activity/AccountSetupTest;)Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/AccountSetupTest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mHandler:Lcom/akop/bach/activity/AccountSetupTest$TaskHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/akop/bach/activity/AccountSetupTest;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/AccountSetupTest;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProfileData:Landroid/content/ContentValues;

    return-object p1
.end method

.method public static actionTestSettings(Landroid/app/Activity;Lcom/akop/bach/BasicAccount;Z)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "createAccount"    # Z

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/AccountSetupTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    const-string v1, "createAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0009

    if-ne v0, v1, :cond_1

    .line 189
    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/AccountSetupTest;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSetupTest;->finish()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b000a

    if-ne v0, v1, :cond_0

    .line 194
    iget-boolean v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mCreateAccount:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProfileData:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mAccount:Lcom/akop/bach/BasicAccount;

    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProfileData:Landroid/content/ContentValues;

    invoke-virtual {v0, p0, v1}, Lcom/akop/bach/BasicAccount;->create(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 201
    const v0, 0x7f080008

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSetupTest;->finish()V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/BasicAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 206
    const v0, 0x7f080038

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->requestWindowFeature(I)Z

    .line 147
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSetupTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/BasicAccount;

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 150
    invoke-virtual {p0}, Lcom/akop/bach/activity/AccountSetupTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "createAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mCreateAccount:Z

    .line 152
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mMessage:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mNextButton:Landroid/widget/Button;

    .line 154
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mBackButton:Landroid/widget/Button;

    .line 155
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/AccountSetupTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProgress:Landroid/widget/ProgressBar;

    .line 157
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/BasicAccount;

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProfileData:Landroid/content/ContentValues;

    .line 164
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    .line 228
    .local v0, "controller":Lcom/akop/bach/TaskController;
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 230
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mProfileData:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mAccount:Lcom/akop/bach/BasicAccount;

    iget-object v2, p0, Lcom/akop/bach/activity/AccountSetupTest;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->validateAccount(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/activity/AccountSetupTest;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    return-void
.end method

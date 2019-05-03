.class public Lcom/akop/bach/activity/DeleteAccount;
.super Landroid/app/Activity;
.source "DeleteAccount.java"


# static fields
.field private static final DIALOG_WARN_DELETE:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/BasicAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/DeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/DeleteAccount;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/akop/bach/activity/DeleteAccount;->delete()V

    return-void
.end method

.method private delete()V
    .locals 3

    .prologue
    .line 69
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/DeleteAccount;->mAccount:Lcom/akop/bach/BasicAccount;

    invoke-virtual {v0, p0, v1}, Lcom/akop/bach/Preferences;->deleteAccount(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V

    .line 71
    invoke-static {p0}, Lcom/akop/bach/service/NotificationService;->actionReschedule(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/DeleteAccount;->mAccount:Lcom/akop/bach/BasicAccount;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/TaskController;->deleteAccount(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/akop/bach/activity/DeleteAccount;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/akop/bach/activity/DeleteAccount;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "uriPart":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 54
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 55
    .local v0, "accountId":J
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/akop/bach/Preferences;->getAccount(J)Lcom/akop/bach/BasicAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/activity/DeleteAccount;->mAccount:Lcom/akop/bach/BasicAccount;

    .line 64
    .end local v0    # "accountId":J
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/akop/bach/activity/DeleteAccount;->showDialog(I)V

    .line 65
    .end local v2    # "uriPart":Ljava/lang/String;
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/activity/DeleteAccount;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 110
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 85
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/akop/bach/activity/DeleteAccount$2;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/DeleteAccount$2;-><init>(Lcom/akop/bach/activity/DeleteAccount;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/akop/bach/activity/DeleteAccount$1;

    invoke-direct {v3, p0}, Lcom/akop/bach/activity/DeleteAccount$1;-><init>(Lcom/akop/bach/activity/DeleteAccount;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080040

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

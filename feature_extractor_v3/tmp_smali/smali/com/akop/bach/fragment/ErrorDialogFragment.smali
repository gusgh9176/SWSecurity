.class public Lcom/akop/bach/fragment/ErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;
    }
.end annotation


# instance fields
.field private mOkListener:Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/ErrorDialogFragment;->mOkListener:Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Exception;)Lcom/akop/bach/fragment/ErrorDialogFragment;
    .locals 3
    .param p0, "errorMessage"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 45
    new-instance v1, Lcom/akop/bach/fragment/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/ErrorDialogFragment;-><init>()V

    .line 47
    .local v1, "f":Lcom/akop/bach/fragment/ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "exception"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method


# virtual methods
.method public getOnOkListener()Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/akop/bach/fragment/ErrorDialogFragment;->mOkListener:Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x0

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/fragment/ErrorDialogFragment;->setStyle(II)V

    .line 71
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/akop/bach/fragment/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080069

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 81
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080039

    new-instance v4, Lcom/akop/bach/fragment/ErrorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/akop/bach/fragment/ErrorDialogFragment$1;-><init>(Lcom/akop/bach/fragment/ErrorDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 92
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-object v2
.end method

.method public setOnOkListener(Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/akop/bach/fragment/ErrorDialogFragment;->mOkListener:Lcom/akop/bach/fragment/ErrorDialogFragment$OnOkListener;

    .line 63
    return-void
.end method

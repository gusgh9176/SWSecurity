.class public Lcom/akop/bach/fragment/AlertDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;
    }
.end annotation


# static fields
.field public static final TYPE_OK:I = 0x0

.field public static final TYPE_YES_NO:I = 0x1


# instance fields
.field private mOkListener:Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/AlertDialogFragment;->mOkListener:Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/AlertDialogFragment;)Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/AlertDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/akop/bach/fragment/AlertDialogFragment;->mOkListener:Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    return-object v0
.end method

.method public static newInstance(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;
    .locals 4
    .param p0, "type"    # I
    .param p1, "code"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "param"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Lcom/akop/bach/fragment/AlertDialogFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/AlertDialogFragment;-><init>()V

    .line 59
    .local v1, "f":Lcom/akop/bach/fragment/AlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "message"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "id"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    const-string v2, "param"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;
    .locals 7
    .param p0, "code"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v6, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;
    .locals 7
    .param p0, "code"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOnOkListener()Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/fragment/AlertDialogFragment;->mOkListener:Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x0

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/fragment/AlertDialogFragment;->setStyle(II)V

    .line 87
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "args":Landroid/os/Bundle;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 97
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 99
    const v3, 0x104000a

    new-instance v4, Lcom/akop/bach/fragment/AlertDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/akop/bach/fragment/AlertDialogFragment$1;-><init>(Lcom/akop/bach/fragment/AlertDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 136
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-object v2

    .line 108
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 110
    const v3, 0x1040013

    new-instance v4, Lcom/akop/bach/fragment/AlertDialogFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/akop/bach/fragment/AlertDialogFragment$3;-><init>(Lcom/akop/bach/fragment/AlertDialogFragment;Landroid/os/Bundle;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    new-instance v5, Lcom/akop/bach/fragment/AlertDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/akop/bach/fragment/AlertDialogFragment$2;-><init>(Lcom/akop/bach/fragment/AlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/akop/bach/fragment/AlertDialogFragment;->mOkListener:Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    .line 79
    return-void
.end method

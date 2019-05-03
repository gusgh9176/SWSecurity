.class public Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;
.super Landroid/support/v4/app/DialogFragment;
.source "BeaconTextPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;
    }
.end annotation


# instance fields
.field private mOkListener:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->mOkListener:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;)Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->mOkListener:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    return-object v0
.end method

.method public static newInstance()Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;
    .locals 2

    .prologue
    .line 48
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;-><init>()V

    .line 50
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public getOnOkListener()Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->mOkListener:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x0

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->setStyle(II)V

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 78
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03002d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0800f1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;

    invoke-direct {v6, p0, v3}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;-><init>(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;Landroid/view/View;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$1;

    invoke-direct {v6, p0}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$1;-><init>(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 108
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method public setOnOkListener(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->mOkListener:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    .line 64
    return-void
.end method

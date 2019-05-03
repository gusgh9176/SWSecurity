.class public Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "GameCatalogFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mConsole:I

.field private mOkListener:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

.field private mReleaseStatus:I

.field private mSortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mOkListener:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    return v0
.end method

.method static synthetic access$002(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    return p1
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    return v0
.end method

.method static synthetic access$302(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    return p1
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mOkListener:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
    .locals 4
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 60
    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;-><init>()V

    .line 62
    .local v1, "f":Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "sortOrder"

    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getCatalogSortOrder()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v2, "releaseStatus"

    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getCatalogReleaseStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "console"

    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getCatalogConsole()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public getOnOkListener()Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mOkListener:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sortOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    .line 88
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "releaseStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    .line 89
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "console"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    .line 90
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/PsnAccount;

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 92
    if-eqz p1, :cond_0

    .line 94
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    .line 95
    const-string v0, "releaseStatus"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    .line 96
    const-string v0, "console"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    .line 99
    :cond_0
    const/4 v0, 0x0

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->setStyle(II)V

    .line 100
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 116
    .local v3, "li":Landroid/view/LayoutInflater;
    const v6, 0x7f030012

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "layout":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v9, 0x7f080032

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v9, 0x1040013

    new-instance v10, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;

    invoke-direct {v10, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v6, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v9, 0x1040009

    new-instance v10, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$1;

    invoke-direct {v10, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v6, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 150
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b005d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 151
    .local v0, "btn":Landroid/widget/RadioButton;
    iget v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    if-ne v6, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 152
    new-instance v6, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$3;

    invoke-direct {v6, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v6, 0x7f0b005c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/RadioButton;
    check-cast v0, Landroid/widget/RadioButton;

    .line 162
    .restart local v0    # "btn":Landroid/widget/RadioButton;
    iget v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    if-nez v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 163
    new-instance v6, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$4;

    invoke-direct {v6, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v6, 0x7f0b005b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/RadioButton;
    check-cast v0, Landroid/widget/RadioButton;

    .line 173
    .restart local v0    # "btn":Landroid/widget/RadioButton;
    iget v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 174
    new-instance v6, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$5;

    invoke-direct {v6, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$5;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v6, 0x7f0b005a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/RadioButton;
    check-cast v0, Landroid/widget/RadioButton;

    .line 184
    .restart local v0    # "btn":Landroid/widget/RadioButton;
    iget v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    if-nez v6, :cond_3

    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    new-instance v6, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$6;

    invoke-direct {v6, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$6;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v6, 0x7f0b0058

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 195
    .local v4, "spin":Landroid/widget/Spinner;
    iget v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 196
    new-instance v6, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$7;

    invoke-direct {v6, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$7;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 211
    const v6, 0x7f0b0059

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 212
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v6}, Lcom/akop/bach/PsnAccount;->supportsFilteringByReleaseDate()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_4
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .end local v4    # "spin":Landroid/widget/Spinner;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    move v6, v8

    .line 151
    goto/16 :goto_0

    :cond_1
    move v6, v8

    .line 162
    goto :goto_1

    :cond_2
    move v6, v8

    .line 173
    goto :goto_2

    :cond_3
    move v7, v8

    .line 184
    goto :goto_3

    .line 212
    .restart local v4    # "spin":Landroid/widget/Spinner;
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    const/16 v8, 0x8

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v0, "releaseStatus"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mReleaseStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v0, "console"

    iget v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mConsole:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public setOnOkListener(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->mOkListener:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    .line 80
    return-void
.end method

.class public Lcom/akop/bach/activity/playstation/PsnAccountLogin;
.super Lcom/akop/bach/activity/AuthenticatingAccountLogin;
.source "PsnAccountLogin.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mLocaleSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f03000a

    return v0
.end method

.method protected isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-super {p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->mLocaleSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->mLocaleSpinner:Landroid/widget/Spinner;

    .line 78
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->mLocaleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->resetValidation()V

    .line 86
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->resetValidation()V

    .line 92
    return-void
.end method

.method protected setupTest(Lcom/akop/bach/AuthenticatingAccount;)V
    .locals 5
    .param p1, "account"    # Lcom/akop/bach/AuthenticatingAccount;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->setupTest(Lcom/akop/bach/AuthenticatingAccount;)V

    .line 65
    iget-object v3, p0, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->mLocaleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 66
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/PsnAccountLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "localeValues":[Ljava/lang/String;
    move-object v2, p1

    .line 67
    check-cast v2, Lcom/akop/bach/PsnAccount;

    .line 69
    .local v2, "psnAccount":Lcom/akop/bach/PsnAccount;
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/akop/bach/PsnAccount;->setLocale(Ljava/lang/String;)V

    .line 70
    return-void
.end method

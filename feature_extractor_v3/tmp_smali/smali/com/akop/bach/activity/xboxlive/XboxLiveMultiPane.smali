.class public abstract Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;
.super Lcom/akop/bach/activity/RibbonedMultiPane;
.source "XboxLiveMultiPane.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/akop/bach/activity/RibbonedMultiPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/akop/bach/XboxLiveAccount;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/XboxLiveMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    check-cast v0, Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method protected getActionBarLayout()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f03002b

    return v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f030048

    return v0
.end method

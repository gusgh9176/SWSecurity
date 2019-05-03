.class public abstract Lcom/akop/bach/activity/playstation/PsnSinglePane;
.super Lcom/akop/bach/activity/RibbonedSinglePane;
.source "PsnSinglePane.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/akop/bach/activity/RibbonedSinglePane;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/akop/bach/PsnAccount;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/PsnSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    check-cast v0, Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method protected getActionBarLayout()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f03000b

    return v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f030023

    return v0
.end method

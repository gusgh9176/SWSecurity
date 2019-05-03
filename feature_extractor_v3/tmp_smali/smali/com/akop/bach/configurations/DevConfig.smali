.class public Lcom/akop/bach/configurations/DevConfig;
.super Lcom/akop/bach/configurations/AppConfig;
.source "DevConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/akop/bach/configurations/AppConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public logHttp()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public logToConsole()Z
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    return v0
.end method

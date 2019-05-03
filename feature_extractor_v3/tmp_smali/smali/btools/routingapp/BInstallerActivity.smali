.class public Lbtools/routingapp/BInstallerActivity;
.super Landroid/app/Activity;
.source "BInstallerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private mBInstallerView:Lbtools/routingapp/BInstallerView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lbtools/routingapp/BInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 26
    iget-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xa

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbtools/routingapp/BInstallerActivity;->setRequestedOrientation(I)V

    .line 32
    new-instance v0, Lbtools/routingapp/BInstallerView;

    invoke-direct {v0, p0}, Lbtools/routingapp/BInstallerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mBInstallerView:Lbtools/routingapp/BInstallerView;

    .line 33
    iget-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mBInstallerView:Lbtools/routingapp/BInstallerView;

    invoke-virtual {p0, v0}, Lbtools/routingapp/BInstallerActivity;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    iget-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 47
    iget-object v0, p0, Lbtools/routingapp/BInstallerActivity;->mBInstallerView:Lbtools/routingapp/BInstallerView;

    invoke-virtual {v0}, Lbtools/routingapp/BInstallerView;->startInstaller()V

    .line 48
    return-void
.end method

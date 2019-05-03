.class public Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
.super Landroid/os/Handler;
.source "GenericFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/GenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GenericHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/akop/bach/fragment/GenericFragment$GenericHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler$1;-><init>(Lcom/akop/bach/fragment/GenericFragment$GenericHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.class public Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;
.super Landroid/os/Handler;
.source "RibbonedSinglePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedSinglePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedSinglePane;


# direct methods
.method protected constructor <init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAvatar(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    new-instance v0, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler$1;-><init>(Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

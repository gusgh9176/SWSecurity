.class Lcom/akop/bach/activity/RibbonedSinglePane$1;
.super Ljava/lang/Object;
.source "RibbonedSinglePane.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedSinglePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedSinglePane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$1;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$1;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedSinglePane;->mHandler:Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;

    invoke-virtual {v0, p4}, Lcom/akop/bach/activity/RibbonedSinglePane$MyHandler;->updateAvatar(Landroid/graphics/Bitmap;)V

    .line 81
    return-void
.end method

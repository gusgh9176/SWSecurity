.class Lcom/akop/bach/activity/RibbonedMultiPane$1;
.super Ljava/lang/Object;
.source "RibbonedMultiPane.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedMultiPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedMultiPane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$1;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

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
    .line 82
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$1;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane;->mHandler:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    invoke-virtual {v0, p4}, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;->updateAvatar(Landroid/graphics/Bitmap;)V

    .line 83
    return-void
.end method

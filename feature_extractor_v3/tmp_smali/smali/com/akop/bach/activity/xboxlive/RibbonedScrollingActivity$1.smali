.class Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$1;
.super Ljava/lang/Object;
.source "RibbonedScrollingActivity.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$1;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

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
    .line 71
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$1;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;

    invoke-virtual {v0, p4}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$XboxLiveHandler;->updateRibbonAvatar(Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method

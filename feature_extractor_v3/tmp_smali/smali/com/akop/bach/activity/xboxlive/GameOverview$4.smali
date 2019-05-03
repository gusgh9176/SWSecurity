.class Lcom/akop/bach/activity/xboxlive/GameOverview$4;
.super Ljava/lang/Object;
.source "GameOverview.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$4;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$4;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$500(Lcom/akop/bach/activity/xboxlive/GameOverview;)Ljava/util/Map;

    move-result-object v0

    check-cast p3, Ljava/lang/String;

    .end local p3    # "param":Ljava/lang/Object;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$4;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$300(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->refreshScreenshots()V

    .line 417
    return-void
.end method

.class Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;
.super Ljava/lang/Object;
.source "GameOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePair"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;->imageView:Landroid/widget/ImageView;

    .line 75
    iput-object p3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler$ImagePair;->bitmap:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

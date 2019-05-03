.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->loadGameDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

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
    .line 687
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6$1;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    return-void
.end method

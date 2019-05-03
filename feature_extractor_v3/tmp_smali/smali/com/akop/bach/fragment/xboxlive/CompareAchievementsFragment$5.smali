.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;
.super Ljava/lang/Object;
.source "CompareAchievementsFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->synchronizeLocal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;->val$iv:Landroid/widget/ImageView;

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
    .line 639
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;

    invoke-direct {v1, p0, p4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 647
    return-void
.end method

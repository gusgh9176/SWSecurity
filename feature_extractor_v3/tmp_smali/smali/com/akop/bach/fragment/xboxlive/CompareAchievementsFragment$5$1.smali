.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;
.super Ljava/lang/Object;
.source "CompareAchievementsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;->this$1:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 645
    return-void
.end method

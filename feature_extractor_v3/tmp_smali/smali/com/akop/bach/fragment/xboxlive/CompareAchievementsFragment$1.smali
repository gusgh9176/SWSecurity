.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;
.super Ljava/lang/Object;
.source "CompareAchievementsFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

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
    .line 188
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0, p4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$102(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 193
    .end local p3    # "param":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1$1;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void

    .line 190
    .restart local p3    # "param":Ljava/lang/Object;
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "param":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v0, p4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$202(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

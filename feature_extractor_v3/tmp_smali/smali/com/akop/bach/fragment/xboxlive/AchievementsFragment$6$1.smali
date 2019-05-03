.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6$1;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6$1;->this$1:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$1400(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    .line 693
    return-void
.end method

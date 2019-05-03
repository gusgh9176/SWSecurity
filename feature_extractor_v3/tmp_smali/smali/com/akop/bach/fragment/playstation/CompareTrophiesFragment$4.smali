.class Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;
.super Ljava/lang/Object;
.source "CompareTrophiesFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->synchronizeLocal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;->val$iv:Landroid/widget/ImageView;

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
    .line 636
    invoke-static {}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$1700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;

    invoke-direct {v1, p0, p4}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void
.end method

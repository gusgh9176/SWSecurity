.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;
.super Ljava/lang/Object;
.source "GameCatalogDetailsFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

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
    .line 530
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$900(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Ljava/util/HashMap;

    move-result-object v0

    check-cast p3, Ljava/lang/String;

    .end local p3    # "param":Ljava/lang/Object;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-static {}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6$1;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void
.end method

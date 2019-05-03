.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3$1;
.super Ljava/lang/Object;
.source "GameCatalogDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3$1;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3$1;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$400(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    .line 358
    return-void
.end method

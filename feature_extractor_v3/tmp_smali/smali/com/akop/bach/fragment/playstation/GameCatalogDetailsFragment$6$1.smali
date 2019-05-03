.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6$1;
.super Ljava/lang/Object;
.source "GameCatalogDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6$1;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6$1;->this$1:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$1000(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;->notifyDataSetChanged()V

    .line 537
    return-void
.end method

.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$3;
.super Ljava/lang/Object;
.source "GameCatalogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1600(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->notifyDataSetChanged()V

    .line 529
    return-void
.end method

.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$2;
.super Ljava/lang/Object;
.source "GameCatalogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 389
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1500(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    .line 394
    return-void
.end method

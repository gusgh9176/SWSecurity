.class Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$6;
.super Ljava/lang/Object;
.source "GameCatalogFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$6;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$6;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$202(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;I)I

    .line 191
    return-void
.end method

.class Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$1;
.super Ljava/lang/Object;
.source "GameCatalogFilterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 140
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->dismiss()V

    .line 145
    return-void
.end method

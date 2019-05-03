.class Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$7;
.super Ljava/lang/Object;
.source "GameCatalogFilterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 197
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$7;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$7;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0, p3}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$002(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;I)I

    .line 203
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

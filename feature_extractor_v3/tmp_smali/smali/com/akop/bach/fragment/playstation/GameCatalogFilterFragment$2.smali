.class Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;
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
    .line 123
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$100(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$000(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->setCatalogConsole(I)V

    .line 127
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$100(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->setCatalogReleaseStatus(I)V

    .line 128
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$100(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$300(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->setCatalogSortOrder(I)V

    .line 129
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$100(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 131
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$400(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$400(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$000(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->access$300(Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$OnOkListener;->okClicked(III)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/GameCatalogFilterFragment;->dismiss()V

    .line 136
    return-void
.end method

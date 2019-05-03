.class Lcom/akop/bach/fragment/AlertDialogFragment$3;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/AlertDialogFragment;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/AlertDialogFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->this$0:Lcom/akop/bach/fragment/AlertDialogFragment;

    iput-object p2, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->this$0:Lcom/akop/bach/fragment/AlertDialogFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/AlertDialogFragment;->access$000(Lcom/akop/bach/fragment/AlertDialogFragment;)Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->this$0:Lcom/akop/bach/fragment/AlertDialogFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/AlertDialogFragment;->access$000(Lcom/akop/bach/fragment/AlertDialogFragment;)Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->val$args:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->val$args:Landroid/os/Bundle;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->val$args:Landroid/os/Bundle;

    const-string v5, "param"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;->okClicked(IJLjava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/AlertDialogFragment$3;->this$0:Lcom/akop/bach/fragment/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/AlertDialogFragment;->dismiss()V

    .line 122
    return-void
.end method

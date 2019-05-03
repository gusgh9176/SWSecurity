.class Lcom/akop/bach/activity/DeleteAccount$1;
.super Ljava/lang/Object;
.source "DeleteAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/DeleteAccount;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/DeleteAccount;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/DeleteAccount;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/akop/bach/activity/DeleteAccount$1;->this$0:Lcom/akop/bach/activity/DeleteAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/akop/bach/activity/DeleteAccount$1;->this$0:Lcom/akop/bach/activity/DeleteAccount;

    invoke-virtual {v0}, Lcom/akop/bach/activity/DeleteAccount;->finish()V

    .line 102
    return-void
.end method

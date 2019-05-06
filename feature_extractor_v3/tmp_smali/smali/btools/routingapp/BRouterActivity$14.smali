.class Lbtools/routingapp/BRouterActivity$14;
.super Ljava/lang/Object;
.source "BRouterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtools/routingapp/BRouterActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbtools/routingapp/BRouterActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lbtools/routingapp/BRouterActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$14;->this$0:Lbtools/routingapp/BRouterActivity;

    iput-object p2, p0, Lbtools/routingapp/BRouterActivity$14;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$14;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "basedir":Ljava/lang/String;
    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$14;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v1}, Lbtools/routingapp/BRouterActivity;->access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbtools/routingapp/BRouterView;->startSetup(Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

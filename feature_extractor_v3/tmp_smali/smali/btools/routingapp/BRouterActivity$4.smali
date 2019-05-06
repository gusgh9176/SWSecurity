.class Lbtools/routingapp/BRouterActivity$4;
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


# direct methods
.method constructor <init>(Lbtools/routingapp/BRouterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$4;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$4;->this$0:Lbtools/routingapp/BRouterActivity;

    const-class v2, Lbtools/routingapp/BInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$4;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v1, v0}, Lbtools/routingapp/BRouterActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$4;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v1}, Lbtools/routingapp/BRouterActivity;->finish()V

    .line 118
    return-void
.end method

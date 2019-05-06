.class Lbtools/routingapp/BRouterActivity$16;
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
    .line 262
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$600(Lbtools/routingapp/BRouterActivity;)I

    move-result v0

    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v1}, Lbtools/routingapp/BRouterActivity;->access$700(Lbtools/routingapp/BRouterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;

    move-result-object v1

    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$700(Lbtools/routingapp/BRouterActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v2}, Lbtools/routingapp/BRouterActivity;->access$600(Lbtools/routingapp/BRouterActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbtools/routingapp/BRouterView;->startSetup(Ljava/lang/String;Z)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$16;->this$0:Lbtools/routingapp/BRouterActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    goto :goto_0
.end method

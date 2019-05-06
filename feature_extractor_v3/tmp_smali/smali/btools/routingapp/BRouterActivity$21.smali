.class Lbtools/routingapp/BRouterActivity$21;
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
    .line 349
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$1000(Lbtools/routingapp/BRouterActivity;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v0}, Lbtools/routingapp/BRouterActivity;->showRepeatTimeoutHelp()V

    .line 365
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$1000(Lbtools/routingapp/BRouterActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;

    move-result-object v0

    invoke-virtual {v0}, Lbtools/routingapp/BRouterView;->startConfigureService()V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;

    move-result-object v0

    invoke-virtual {v0}, Lbtools/routingapp/BRouterView;->finishWaypointSelection()V

    .line 363
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;

    move-result-object v0

    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$21;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v1}, Lbtools/routingapp/BRouterActivity;->access$000(Lbtools/routingapp/BRouterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtools/routingapp/BRouterView;->startProcessing(Ljava/lang/String;)V

    goto :goto_0
.end method

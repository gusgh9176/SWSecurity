.class Lbtools/routingapp/BRouterActivity$9;
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
    .line 175
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$9;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$9;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$200(Lbtools/routingapp/BRouterActivity;)Lbtools/routingapp/BRouterView;

    move-result-object v0

    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$9;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v1}, Lbtools/routingapp/BRouterActivity;->access$300(Lbtools/routingapp/BRouterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtools/routingapp/BRouterView;->saveMaptoolDir(Ljava/lang/String;)V

    .line 179
    return-void
.end method

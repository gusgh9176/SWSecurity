.class Lbtools/routingapp/BRouterActivity$2;
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
    .line 94
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$2;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$2;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v0}, Lbtools/routingapp/BRouterActivity;->startDownloadManager()V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$2;->this$0:Lbtools/routingapp/BRouterActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbtools/routingapp/BRouterActivity;->showDialog(I)V

    goto :goto_0
.end method

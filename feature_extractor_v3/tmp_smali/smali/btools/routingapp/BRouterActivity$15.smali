.class Lbtools/routingapp/BRouterActivity$15;
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
    .line 254
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$15;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$15;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0, p2}, Lbtools/routingapp/BRouterActivity;->access$602(Lbtools/routingapp/BRouterActivity;I)I

    .line 259
    return-void
.end method

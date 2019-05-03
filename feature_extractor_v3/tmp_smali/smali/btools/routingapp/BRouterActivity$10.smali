.class Lbtools/routingapp/BRouterActivity$10;
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
    .line 198
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$10;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$10;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v0}, Lbtools/routingapp/BRouterActivity;->finish()V

    .line 202
    return-void
.end method

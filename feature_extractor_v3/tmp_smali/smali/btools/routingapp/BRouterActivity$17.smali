.class Lbtools/routingapp/BRouterActivity$17;
.super Ljava/lang/Object;
.source "BRouterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 280
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$17;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 284
    if-eqz p3, :cond_0

    .line 286
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$17;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$900(Lbtools/routingapp/BRouterActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$17;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v1}, Lbtools/routingapp/BRouterActivity;->access$800(Lbtools/routingapp/BRouterActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$17;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$900(Lbtools/routingapp/BRouterActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lbtools/routingapp/BRouterActivity$17;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v1}, Lbtools/routingapp/BRouterActivity;->access$800(Lbtools/routingapp/BRouterActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

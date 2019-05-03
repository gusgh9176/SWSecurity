.class Lbtools/routingapp/BRouterActivity$11;
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
    .line 209
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$11;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$11;->this$0:Lbtools/routingapp/BRouterActivity;

    invoke-static {v0}, Lbtools/routingapp/BRouterActivity;->access$400(Lbtools/routingapp/BRouterActivity;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 214
    return-void
.end method

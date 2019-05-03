.class Lbtools/routingapp/BRouterActivity$19;
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

.field final synthetic val$nogoEnabled:[Z


# direct methods
.method constructor <init>(Lbtools/routingapp/BRouterActivity;[Z)V
    .locals 0
    .param p1, "this$0"    # Lbtools/routingapp/BRouterActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lbtools/routingapp/BRouterActivity$19;->this$0:Lbtools/routingapp/BRouterActivity;

    iput-object p2, p0, Lbtools/routingapp/BRouterActivity$19;->val$nogoEnabled:[Z

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
    .line 315
    iget-object v0, p0, Lbtools/routingapp/BRouterActivity$19;->val$nogoEnabled:[Z

    aput-boolean p3, v0, p2

    .line 316
    return-void
.end method

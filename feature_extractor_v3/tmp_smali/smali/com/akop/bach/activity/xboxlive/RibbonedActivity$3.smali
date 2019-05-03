.class Lcom/akop/bach/activity/xboxlive/RibbonedActivity$3;
.super Ljava/lang/Object;
.source "RibbonedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$3;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$3;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onErrorDialogOk()V

    .line 304
    return-void
.end method

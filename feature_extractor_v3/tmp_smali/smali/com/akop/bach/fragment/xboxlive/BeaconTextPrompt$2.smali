.class Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;
.super Ljava/lang/Object;
.source "BeaconTextPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;->this$0:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 88
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;->val$view:Landroid/view/View;

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 90
    .local v0, "textBox":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;->this$0:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->access$000(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;)Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;->this$0:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->access$000(Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;)Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$OnOkListener;->beaconTextEntered(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt$2;->this$0:Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/BeaconTextPrompt;->dismiss()V

    .line 94
    return-void
.end method

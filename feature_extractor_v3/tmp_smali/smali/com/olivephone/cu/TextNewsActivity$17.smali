.class Lcom/olivephone/cu/TextNewsActivity$17;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->loadChannelData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$17;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$17;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/TextNewsActivity;->finish()V

    .line 1102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$17;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const-class v2, Lcom/olivephone/cu/XinHuaLaunch;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1103
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$17;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/TextNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1104
    return-void
.end method

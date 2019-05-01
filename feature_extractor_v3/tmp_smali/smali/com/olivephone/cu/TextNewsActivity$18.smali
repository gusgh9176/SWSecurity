.class Lcom/olivephone/cu/TextNewsActivity$18;
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
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$18;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$18;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/TextNewsActivity;->finish()V

    .line 1111
    return-void
.end method

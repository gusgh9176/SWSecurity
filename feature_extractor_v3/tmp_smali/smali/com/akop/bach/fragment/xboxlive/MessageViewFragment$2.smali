.class Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$2;
.super Landroid/database/ContentObserver;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 88
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V

    .line 89
    return-void
.end method

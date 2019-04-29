.class Lcom/commonsware/android/arXiv/arXiv$1;
.super Landroid/os/Handler;
.source "arXiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/arXiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/arXiv;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/arXiv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/arXiv$1;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    .line 1030
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv$1;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXiv;->updateFavList()V

    .line 1036
    return-void
.end method

.class Lcom/commonsware/android/arXiv/SingleItemWindow$4;
.super Landroid/os/Handler;
.source "SingleItemWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/SingleItemWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$4;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$4;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow;->setProgressBarIndeterminateVisibility(Z)V

    .line 131
    return-void
.end method

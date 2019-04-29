.class Lcom/commonsware/android/arXiv/SingleItemWindow$2;
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
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$2;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$2;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/content/Context;

    move-result-object v0

    .line 114
    const v1, 0x7f070008

    .line 115
    const/4 v2, 0x0

    .line 113
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

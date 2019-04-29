.class Lcom/commonsware/android/arXiv/RSSListWindow$1;
.super Landroid/os/Handler;
.source "RSSListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/RSSListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/RSSListWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$1;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$1;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    new-instance v1, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$1;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v1, v2}, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow;)V

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/RSSListWindow;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method

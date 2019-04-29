.class Lcom/commonsware/android/arXiv/RSSListWindow$2;
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
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$2;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    .line 137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$2;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$0(Lcom/commonsware/android/arXiv/RSSListWindow;Ljava/lang/Boolean;)V

    .line 141
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$2;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/RSSListWindow;->setProgressBarIndeterminateVisibility(Z)V

    .line 142
    return-void
.end method

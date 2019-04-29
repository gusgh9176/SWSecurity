.class Lcom/commonsware/android/arXiv/SearchListWindow$1;
.super Landroid/os/Handler;
.source "SearchListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/SearchListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SearchListWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    .line 170
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    new-instance v1, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v1, v2}, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/SearchListWindow;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    return-void
.end method

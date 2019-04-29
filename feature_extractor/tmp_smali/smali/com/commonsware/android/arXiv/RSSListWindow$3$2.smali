.class Lcom/commonsware/android/arXiv/RSSListWindow$3$2;
.super Ljava/lang/Object;
.source "RSSListWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/RSSListWindow$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$2;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$2;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/RSSListWindow$3;->access$0(Lcom/commonsware/android/arXiv/RSSListWindow$3;)Lcom/commonsware/android/arXiv/RSSListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    return-void
.end method

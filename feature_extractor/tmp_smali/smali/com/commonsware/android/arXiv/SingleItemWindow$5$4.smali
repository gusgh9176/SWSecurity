.class Lcom/commonsware/android/arXiv/SingleItemWindow$5$4;
.super Ljava/lang/Object;
.source "SingleItemWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SingleItemWindow$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$5;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$4;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$4;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$6(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 409
    return-void
.end method

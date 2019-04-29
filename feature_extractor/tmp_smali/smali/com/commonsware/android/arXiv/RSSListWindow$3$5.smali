.class Lcom/commonsware/android/arXiv/RSSListWindow$3$5;
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

.field private final synthetic val$ef:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$5;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$5;->val$ef:Ljava/lang/Exception;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$5;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/RSSListWindow$3;->access$0(Lcom/commonsware/android/arXiv/RSSListWindow$3;)Lcom/commonsware/android/arXiv/RSSListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$5;->val$ef:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

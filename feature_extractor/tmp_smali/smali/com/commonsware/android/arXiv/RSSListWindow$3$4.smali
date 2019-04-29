.class Lcom/commonsware/android/arXiv/RSSListWindow$3$4;
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

.field private final synthetic val$nitemst:I

.field private final synthetic val$nitemst2:I

.field private final synthetic val$tdate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;

    iput p2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->val$nitemst:I

    iput-object p3, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->val$tdate:Ljava/lang/String;

    iput p4, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->val$nitemst2:I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$3;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/RSSListWindow$3;->access$0(Lcom/commonsware/android/arXiv/RSSListWindow$3;)Lcom/commonsware/android/arXiv/RSSListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->val$nitemst:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    const-string v2, " new submissions.  Refreshed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->val$tdate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string v2, "\nError in feed - only showing first "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    iget v2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;->val$nitemst2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

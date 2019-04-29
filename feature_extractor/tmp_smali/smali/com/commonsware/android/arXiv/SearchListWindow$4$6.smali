.class Lcom/commonsware/android/arXiv/SearchListWindow$4$6;
.super Ljava/lang/Object;
.source "SearchListWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SearchListWindow$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

.field private final synthetic val$fnmax:I

.field private final synthetic val$fnmin:I

.field private final synthetic val$fntotalitems:I


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    iput p2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->val$fnmin:I

    iput p3, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->val$fnmax:I

    iput p4, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->val$fntotalitems:I

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4;->access$0(Lcom/commonsware/android/arXiv/SearchListWindow$4;)Lcom/commonsware/android/arXiv/SearchListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$5(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Showing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->val$fnmin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->val$fnmax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;->val$fntotalitems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

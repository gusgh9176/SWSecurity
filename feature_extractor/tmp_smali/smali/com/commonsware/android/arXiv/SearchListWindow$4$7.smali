.class Lcom/commonsware/android/arXiv/SearchListWindow$4$7;
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

.field private final synthetic val$ef:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$7;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$7;->val$ef:Ljava/lang/Exception;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$7;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4;->access$0(Lcom/commonsware/android/arXiv/SearchListWindow$4;)Lcom/commonsware/android/arXiv/SearchListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$5(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$7;->val$ef:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.class Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;
.super Ljava/lang/Object;
.source "SingleItemWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SingleItemWindow$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$6;

.field private final synthetic val$rfs:D


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SingleItemWindow$6;D)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$6;

    iput-wide p2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;->val$rfs:D

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$6;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SingleItemWindow$6;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$6;)Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$5(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;->val$rfs:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-void
.end method

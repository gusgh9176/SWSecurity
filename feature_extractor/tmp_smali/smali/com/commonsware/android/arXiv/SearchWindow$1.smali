.class Lcom/commonsware/android/arXiv/SearchWindow$1;
.super Ljava/lang/Object;
.source "SearchWindow.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/SearchWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SearchWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v0, p2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$0(Lcom/commonsware/android/arXiv/SearchWindow;I)V

    .line 78
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v0, p3}, Lcom/commonsware/android/arXiv/SearchWindow;->access$1(Lcom/commonsware/android/arXiv/SearchWindow;I)V

    .line 79
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v0, p4}, Lcom/commonsware/android/arXiv/SearchWindow;->access$2(Lcom/commonsware/android/arXiv/SearchWindow;I)V

    .line 80
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchWindow;->access$3(Lcom/commonsware/android/arXiv/SearchWindow;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$4(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$5(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$6(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchWindow;->access$5(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$4(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$5(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$6(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2399"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/commonsware/android/arXiv/SearchWindow;->access$7(Lcom/commonsware/android/arXiv/SearchWindow;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$4(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$5(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow$1;->this$0:Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchWindow;->access$6(Lcom/commonsware/android/arXiv/SearchWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2399"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/commonsware/android/arXiv/SearchWindow;->access$7(Lcom/commonsware/android/arXiv/SearchWindow;Ljava/lang/String;)V

    goto :goto_0
.end method

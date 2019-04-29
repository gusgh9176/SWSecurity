.class Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;
.super Ljava/lang/Object;
.source "SingleItemWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;

.field private final synthetic val$d:Landroid/app/AlertDialog;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;Ljava/io/File;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->this$2:Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->val$d:Landroid/app/AlertDialog;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 456
    .local v1, "myIntent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 457
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "myIntent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 458
    .restart local v1    # "myIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    :goto_0
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->val$file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/pdf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    :try_start_0
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->this$2:Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;)Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    move-result-object v2

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_1
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->val$d:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 471
    return-void

    .line 460
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "myIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->this$2:Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;)Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    move-result-object v2

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/commonsware/android/arXiv/PrintDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .restart local v1    # "myIntent":Landroid/content/Intent;
    const-string v2, "title"

    const-string v3, "arXiv"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;->this$2:Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;)Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    move-result-object v2

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$15(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

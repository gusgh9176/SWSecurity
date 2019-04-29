.class Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;
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

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->val$file:Ljava/io/File;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;)Lcom/commonsware/android/arXiv/SingleItemWindow$5;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 431
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 432
    .local v1, "optionsList":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "View PDF"

    aput-object v3, v1, v2

    .line 433
    const/4 v2, 0x1

    const-string v3, "Print PDF"

    aput-object v3, v1, v2

    .line 435
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->this$1:Lcom/commonsware/android/arXiv/SingleItemWindow$5;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 437
    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 438
    const-string v3, "View or Print PDF?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 439
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 441
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 448
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 449
    new-instance v3, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;->val$file:Ljava/io/File;

    invoke-direct {v3, p0, v4, v0}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5$1;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;Ljava/io/File;Landroid/app/AlertDialog;)V

    .line 448
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 475
    return-void
.end method

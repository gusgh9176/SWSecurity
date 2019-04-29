.class Lcom/commonsware/android/arXiv/SearchListWindow$4$4;
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


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$4;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$4;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4;->access$0(Lcom/commonsware/android/arXiv/SearchListWindow$4;)Lcom/commonsware/android/arXiv/SearchListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$14(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    return-void
.end method

.class Lcom/commonsware/android/arXiv/SearchListWindow$4$3;
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
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$3;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4$3;->this$1:Lcom/commonsware/android/arXiv/SearchListWindow$4;

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4;->access$0(Lcom/commonsware/android/arXiv/SearchListWindow$4;)Lcom/commonsware/android/arXiv/SearchListWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$13(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    return-void
.end method

.class Lcom/commonsware/android/arXiv/SearchListWindow$3;
.super Ljava/lang/Thread;
.source "SearchListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SearchListWindow;->favoritePressed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SearchListWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$3;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    .line 241
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$3;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/SearchListWindow;->updateWidget()V

    .line 244
    return-void
.end method

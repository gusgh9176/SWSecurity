.class Lcom/commonsware/android/arXiv/arXiv$4;
.super Ljava/lang/Thread;
.source "arXiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/arXiv;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/arXiv;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/arXiv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/arXiv$4;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    .line 460
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv$4;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXiv;->updateWidget()V

    .line 463
    return-void
.end method

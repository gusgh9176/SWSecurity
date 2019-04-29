.class Lcom/commonsware/android/arXiv/SubarXiv$1;
.super Ljava/lang/Thread;
.source "SubarXiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SubarXiv;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SubarXiv;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SubarXiv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SubarXiv$1;->this$0:Lcom/commonsware/android/arXiv/SubarXiv;

    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SubarXiv$1;->this$0:Lcom/commonsware/android/arXiv/SubarXiv;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/SubarXiv;->updateWidget()V

    .line 109
    return-void
.end method

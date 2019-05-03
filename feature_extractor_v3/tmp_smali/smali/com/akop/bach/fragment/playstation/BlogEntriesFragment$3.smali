.class Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "BlogEntriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->synchronizeWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/util/rss/RssChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$1200(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/PsnAccount;->getBlog(Landroid/content/Context;)Lcom/akop/bach/util/rss/RssChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$3;->setResult(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

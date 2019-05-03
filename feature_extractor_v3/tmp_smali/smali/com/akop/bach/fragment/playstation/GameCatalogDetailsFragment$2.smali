.class Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;
.super Ljava/lang/Object;
.source "GameCatalogDetailsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 203
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v2

    iget-object v2, v2, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v2

    iget-object v2, v2, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800f0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 211
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    new-instance v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2$1;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;)V

    .line 242
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/io/File;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    aget-object v3, v3, p3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

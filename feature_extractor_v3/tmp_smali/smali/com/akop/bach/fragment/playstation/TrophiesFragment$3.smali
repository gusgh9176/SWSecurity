.class Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;
.super Ljava/lang/Object;
.source "TrophiesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/TrophiesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1400()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$000(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "Earned DESC, SortOrder ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 277
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$300(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 262
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 286
    :cond_0
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/GamesFragment;
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
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "criteria":Ljava/lang/String;
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/XboxLiveAccount;->isShowingApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND AchievementsTotal> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    :cond_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/XboxLive$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ListIndex ASC, LastPlayed DESC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 289
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$900(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 295
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 270
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 300
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$900(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 301
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;J)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    iput-wide p2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 411
    sget-object v1, Lcom/akop/bach/XboxLive$ComparedGameCursor;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;->val$id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 412
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$3;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-virtual {v1}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 413
    return-void
.end method

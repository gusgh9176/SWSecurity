.class Lcom/akop/bach/ImageCache$1;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/ImageCache;->downloadImage(Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/ImageCache;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/ImageCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/akop/bach/ImageCache$1;->this$0:Lcom/akop/bach/ImageCache;

    iput-object p2, p0, Lcom/akop/bach/ImageCache$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/akop/bach/ImageCache$1;->this$0:Lcom/akop/bach/ImageCache;

    invoke-static {v0}, Lcom/akop/bach/ImageCache;->access$100(Lcom/akop/bach/ImageCache;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/ImageCache$1;->val$filename:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/akop/bach/ImageCache$1;->val$filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/akop/bach/ImageCache$1;->this$0:Lcom/akop/bach/ImageCache;

    invoke-static {v0}, Lcom/akop/bach/ImageCache;->access$100(Lcom/akop/bach/ImageCache;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 737
    :cond_0
    return-void
.end method

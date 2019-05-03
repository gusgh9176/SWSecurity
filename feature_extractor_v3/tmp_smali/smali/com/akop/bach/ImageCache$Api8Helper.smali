.class Lcom/akop/bach/ImageCache$Api8Helper;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Api8Helper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/ImageCache;


# direct methods
.method constructor <init>(Lcom/akop/bach/ImageCache;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/akop/bach/ImageCache$Api8Helper;->this$0:Lcom/akop/bach/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/akop/bach/ImageCache$Api8Helper;->this$0:Lcom/akop/bach/ImageCache;

    invoke-static {v0}, Lcom/akop/bach/ImageCache;->access$000(Lcom/akop/bach/ImageCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalPictureDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/akop/bach/ImageCache$Api8Helper;->this$0:Lcom/akop/bach/ImageCache;

    invoke-static {v0}, Lcom/akop/bach/ImageCache;->access$000(Lcom/akop/bach/ImageCache;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

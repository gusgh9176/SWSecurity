.class Lcom/akop/bach/ImageCache$Task;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field public alwaysRun:Z

.field public cachePol:Lcom/akop/bach/ImageCache$CachePolicy;

.field public id:J

.field public imageUrl:Ljava/lang/String;

.field public listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field public param:Ljava/lang/Object;

.field final synthetic this$0:Lcom/akop/bach/ImageCache;


# direct methods
.method public constructor <init>(Lcom/akop/bach/ImageCache;Ljava/lang/String;JLjava/lang/Object;Lcom/akop/bach/ImageCache$OnImageReadyListener;ZLcom/akop/bach/ImageCache$CachePolicy;)V
    .locals 1
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "param"    # Ljava/lang/Object;
    .param p6, "listener"    # Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .param p7, "alwaysRun"    # Z
    .param p8, "cachePol"    # Lcom/akop/bach/ImageCache$CachePolicy;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/akop/bach/ImageCache$Task;->this$0:Lcom/akop/bach/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p6, p0, Lcom/akop/bach/ImageCache$Task;->listener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 169
    iput-object p2, p0, Lcom/akop/bach/ImageCache$Task;->imageUrl:Ljava/lang/String;

    .line 170
    iput-object p5, p0, Lcom/akop/bach/ImageCache$Task;->param:Ljava/lang/Object;

    .line 171
    iput-wide p3, p0, Lcom/akop/bach/ImageCache$Task;->id:J

    .line 172
    iput-boolean p7, p0, Lcom/akop/bach/ImageCache$Task;->alwaysRun:Z

    .line 173
    iput-object p8, p0, Lcom/akop/bach/ImageCache$Task;->cachePol:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 174
    return-void
.end method

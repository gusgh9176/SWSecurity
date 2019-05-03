.class public Lcom/akop/bach/ImageCache$CachePolicy;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachePolicy"
.end annotation


# static fields
.field public static final SECONDS_IN_DAY:J = 0x15180L

.field public static final SECONDS_IN_HOUR:J = 0xe10L

.field public static final SECONDS_IN_MINUTE:J = 0x3cL


# instance fields
.field public bypassCache:Z

.field public maxAgeSeconds:J

.field public resizeHeight:I

.field public resizeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->bypassCache:Z

    .line 100
    iput v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    .line 101
    iput v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    .line 103
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "resizeWidth"    # I
    .param p2, "resizeHeight"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    .line 118
    iput p2, p0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 119
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxAgeSeconds"    # J

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p1, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    .line 108
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "bypassCache"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean p1, p0, Lcom/akop/bach/ImageCache$CachePolicy;->bypassCache:Z

    .line 113
    return-void
.end method


# virtual methods
.method public expired(JJ)Z
    .locals 9
    .param p1, "currentTimeMillis"    # J
    .param p3, "lastModifiedMillis"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/akop/bach/ImageCache$CachePolicy;->expires()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    :goto_0
    return v3

    .line 136
    :cond_0
    sub-long v4, p1, p3

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 138
    .local v0, "ageSeconds":J
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    iget-wide v4, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 142
    const-string v4, "Cached file has expired (age is %1$d seconds; max age %2$d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    iget-wide v6, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_1
    :goto_1
    iget-wide v4, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    .line 147
    :cond_2
    const-string v4, "Cached file is still valid (age is %1$d seconds; max age %2$d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    iget-wide v6, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 152
    goto :goto_2
.end method

.method public expires()Z
    .locals 4

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->maxAgeSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resize()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeWidth:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

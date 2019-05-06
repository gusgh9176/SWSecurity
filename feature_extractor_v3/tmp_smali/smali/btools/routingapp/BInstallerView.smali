.class public Lbtools/routingapp/BInstallerView;
.super Landroid/view/View;
.source "BInstallerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtools/routingapp/BInstallerView$DownloadTask;
    }
.end annotation


# static fields
.field private static final MASK_CURRENT_RD5:I = 0x8

.field private static final MASK_INSTALLED_RD5:I = 0x4

.field private static final MASK_SELECTED_RD5:I = 0x1


# instance fields
.field private availableSize:J

.field private baseDir:Ljava/lang/String;

.field private bmp:Landroid/graphics/Bitmap;

.field btnh:I

.field btnw:I

.field private currentDownloadFile:Ljava/lang/String;

.field private currentDownloadSize:J

.field private downloadAction:Ljava/lang/String;

.field private volatile downloadCanceled:Z

.field private imgh:I

.field private imghOrig:I

.field private imgw:I

.field private imgwOrig:I

.field private isDownloading:Z

.field private lastDownX:F

.field private lastDownY:F

.field private mat:Landroid/graphics/Matrix;

.field private matText:Landroid/graphics/Matrix;

.field private rd5Tiles:J

.field private scaleOrig:F

.field private testVector:[F

.field private tileStatus:[I

.field private tilesVisible:Z

.field private totalSize:J

.field tx:F

.field ty:F

.field private viewscale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 267
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lbtools/routingapp/BInstallerView;->testVector:[F

    .line 54
    iput-boolean v3, p0, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    .line 59
    iput-boolean v3, p0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    .line 60
    iput-boolean v3, p0, Lbtools/routingapp/BInstallerView;->downloadCanceled:Z

    .line 63
    const-string v2, ""

    iput-object v2, p0, Lbtools/routingapp/BInstallerView;->currentDownloadFile:Ljava/lang/String;

    .line 64
    const-string v2, ""

    iput-object v2, p0, Lbtools/routingapp/BInstallerView;->downloadAction:Ljava/lang/String;

    .line 66
    iput-wide v4, p0, Lbtools/routingapp/BInstallerView;->totalSize:J

    .line 67
    iput-wide v4, p0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    .line 389
    const/16 v2, 0x28

    iput v2, p0, Lbtools/routingapp/BInstallerView;->btnh:I

    .line 390
    const/16 v2, 0xa0

    iput v2, p0, Lbtools/routingapp/BInstallerView;->btnw:I

    .line 269
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 270
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lbtools/routingapp/BInstallerView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 271
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lbtools/routingapp/BInstallerView;->imgwOrig:I

    .line 272
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lbtools/routingapp/BInstallerView;->imghOrig:I

    .line 273
    iget v2, p0, Lbtools/routingapp/BInstallerView;->imgwOrig:I

    iget v3, p0, Lbtools/routingapp/BInstallerView;->imghOrig:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lbtools/routingapp/BInstallerView;->imgwOrig:I

    .line 275
    .local v0, "im":I
    :goto_0
    int-to-float v2, v0

    const/high16 v3, 0x43f00000    # 480.0f

    div-float/2addr v2, v3

    iput v2, p0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    .line 277
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lbtools/routingapp/BInstallerView;->matText:Landroid/graphics/Matrix;

    .line 278
    iget-object v2, p0, Lbtools/routingapp/BInstallerView;->matText:Landroid/graphics/Matrix;

    iget v3, p0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    iget v4, p0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 280
    iget v2, p0, Lbtools/routingapp/BInstallerView;->imgwOrig:I

    int-to-float v2, v2

    iget v3, p0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lbtools/routingapp/BInstallerView;->imgw:I

    .line 281
    iget v2, p0, Lbtools/routingapp/BInstallerView;->imghOrig:I

    int-to-float v2, v2

    iget v3, p0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lbtools/routingapp/BInstallerView;->imgh:I

    .line 282
    return-void

    .line 273
    .end local v0    # "im":I
    :cond_0
    iget v0, p0, Lbtools/routingapp/BInstallerView;->imghOrig:I

    goto :goto_0
.end method

.method static synthetic access$002(Lbtools/routingapp/BInstallerView;J)J
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BInstallerView;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lbtools/routingapp/BInstallerView;->currentDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lbtools/routingapp/BInstallerView;)J
    .locals 2
    .param p0, "x0"    # Lbtools/routingapp/BInstallerView;

    .prologue
    .line 30
    iget-wide v0, p0, Lbtools/routingapp/BInstallerView;->availableSize:J

    return-wide v0
.end method

.method static synthetic access$200(Lbtools/routingapp/BInstallerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BInstallerView;

    .prologue
    .line 30
    iget-object v0, p0, Lbtools/routingapp/BInstallerView;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lbtools/routingapp/BInstallerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtools/routingapp/BInstallerView;

    .prologue
    .line 30
    iget-object v0, p0, Lbtools/routingapp/BInstallerView;->downloadAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lbtools/routingapp/BInstallerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lbtools/routingapp/BInstallerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lbtools/routingapp/BInstallerView;->downloadAction:Ljava/lang/String;

    return-object p1
.end method

.method private clearTileSelection(I)V
    .locals 6
    .param p1, "mask"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    const/16 v3, 0x48

    if-ge v0, v3, :cond_1

    .line 179
    const/4 v1, 0x0

    .local v1, "iy":I
    :goto_1
    const/16 v3, 0x24

    if-ge v1, v3, :cond_0

    .line 181
    invoke-direct {p0, v0, v1}, Lbtools/routingapp/BInstallerView;->gridPos2Tileindex(II)I

    move-result v2

    .line 182
    .local v2, "tidx":I
    iget-object v3, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v4, v3, v2

    iget-object v5, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v5, v5, v2

    and-int/2addr v5, p1

    xor-int/2addr v4, v5

    aput v4, v3, v2

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "tidx":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "iy":I
    :cond_1
    return-void
.end method

.method private currentScale()F
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v0, p0, Lbtools/routingapp/BInstallerView;->testVector:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    .line 190
    iget-object v0, p0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    iget-object v1, p0, Lbtools/routingapp/BInstallerView;->testVector:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 191
    iget-object v0, p0, Lbtools/routingapp/BInstallerView;->testVector:[F

    aget v0, v0, v2

    iget v1, p0, Lbtools/routingapp/BInstallerView;->viewscale:F

    div-float/2addr v0, v1

    return v0
.end method

.method private drawSelectedTiles(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIZZ)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pnt"    # Landroid/graphics/Paint;
    .param p3, "fw"    # F
    .param p4, "fh"    # F
    .param p5, "status"    # I
    .param p6, "mask"    # I
    .param p7, "doCount"    # Z
    .param p8, "doDraw"    # Z

    .prologue
    .line 397
    const/4 v6, 0x0

    .local v6, "ix":I
    :goto_0
    const/16 v0, 0x48

    if-ge v6, v0, :cond_4

    .line 398
    const/4 v7, 0x0

    .local v7, "iy":I
    :goto_1
    const/16 v0, 0x24

    if-ge v7, v0, :cond_3

    .line 400
    invoke-direct {p0, v6, v7}, Lbtools/routingapp/BInstallerView;->gridPos2Tileindex(II)I

    move-result v8

    .line 401
    .local v8, "tidx":I
    iget-object v0, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v0, v0, v8

    and-int v0, v0, p6

    if-ne v0, p5, :cond_1

    .line 403
    invoke-static {v8}, Lbtools/routingapp/BInstallerSizes;->getRd5Size(I)I

    move-result v9

    .line 404
    .local v9, "tilesize":I
    if-lez v9, :cond_1

    .line 406
    if-eqz p7, :cond_0

    .line 408
    iget-wide v0, p0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    .line 409
    iget-wide v0, p0, Lbtools/routingapp/BInstallerView;->totalSize:J

    invoke-static {v8}, Lbtools/routingapp/BInstallerSizes;->getRd5Size(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbtools/routingapp/BInstallerView;->totalSize:J

    .line 411
    :cond_0
    if-nez p8, :cond_2

    .line 398
    .end local v9    # "tilesize":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 414
    .restart local v9    # "tilesize":I
    :cond_2
    int-to-float v0, v6

    mul-float v1, p3, v0

    int-to-float v0, v7

    mul-float v2, p4, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v3, p3, v0

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    mul-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    int-to-float v0, v6

    mul-float v1, p3, v0

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    mul-float v2, p4, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v3, p3, v0

    int-to-float v0, v7

    mul-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 418
    int-to-float v0, v6

    mul-float v1, p3, v0

    int-to-float v0, v7

    mul-float v2, p4, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v3, p3, v0

    int-to-float v0, v7

    mul-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 419
    int-to-float v0, v6

    mul-float v1, p3, v0

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    mul-float v2, p4, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v3, p3, v0

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    mul-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 420
    int-to-float v0, v6

    mul-float v1, p3, v0

    int-to-float v0, v7

    mul-float v2, p4, v0

    int-to-float v0, v6

    mul-float v3, p3, v0

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    mul-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 421
    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v1, p3, v0

    int-to-float v0, v7

    mul-float v2, p4, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v3, p3, v0

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    mul-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 397
    .end local v8    # "tidx":I
    .end local v9    # "tilesize":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 425
    .end local v7    # "iy":I
    :cond_4
    return-void
.end method

.method private gridPos2Tileindex(II)I
    .locals 2
    .param p1, "ix"    # I
    .param p2, "iy"    # I

    .prologue
    .line 80
    rsub-int/lit8 v0, p2, 0x23

    mul-int/lit8 v1, v0, 0x48

    const/16 v0, 0x46

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x46

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x2

    goto :goto_0
.end method

.method private scanExistingFiles()V
    .locals 6

    .prologue
    .line 196
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lbtools/routingapp/BInstallerView;->clearTileSelection(I)V

    .line 198
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbtools/routingapp/BInstallerView;->baseDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/brouter/segments4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lbtools/routingapp/BInstallerView;->scanExistingFiles(Ljava/io/File;)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbtools/routingapp/BInstallerView;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/brouter/segments4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbtools/router/RoutingHelper;->getSecondarySegmentDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 201
    .local v0, "secondary":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lbtools/routingapp/BInstallerView;->scanExistingFiles(Ljava/io/File;)V

    .line 206
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lbtools/routingapp/BInstallerView;->availableSize:J

    .line 209
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lbtools/routingapp/BInstallerView;->baseDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lbtools/routingapp/BInstallerView;->availableSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private scanExistingFiles(Ljava/io/File;)V
    .locals 14
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "fileNames":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 232
    :cond_0
    return-void

    .line 219
    :cond_1
    const-string v5, ".rd5"

    .line 220
    .local v5, "suffix":Ljava/lang/String;
    array-length v9, v4

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v3, v4, v7

    .line 222
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "basename":Ljava/lang/String;
    invoke-direct {p0, v2}, Lbtools/routingapp/BInstallerView;->tileForBaseName(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "tidx":I
    iget-object v10, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v11, v10, v6

    or-int/lit8 v11, v11, 0x4

    aput v11, v10, v6

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long v0, v10, v12

    .line 229
    .local v0, "age":J
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v0, v10

    if-gez v10, :cond_2

    iget-object v10, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v11, v10, v6

    or-int/lit8 v11, v11, 0x8

    aput v11, v10, v6

    .line 220
    .end local v0    # "age":J
    .end local v2    # "basename":Ljava/lang/String;
    .end local v6    # "tidx":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private startDownload(I)V
    .locals 8
    .param p1, "tileIndex"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lbtools/routingapp/BInstallerView;->baseNameForTile(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "namebase":Ljava/lang/String;
    const-string v0, "http://brouter.de/brouter/segments4/"

    .line 146
    .local v0, "baseurl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".rd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lbtools/routingapp/BInstallerView;->currentDownloadFile:Ljava/lang/String;

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbtools/routingapp/BInstallerView;->currentDownloadFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "url":Ljava/lang/String;
    iput-boolean v7, p0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    .line 149
    iput-boolean v6, p0, Lbtools/routingapp/BInstallerView;->downloadCanceled:Z

    .line 150
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbtools/routingapp/BInstallerView;->currentDownloadSize:J

    .line 151
    const-string v4, "Connecting... "

    iput-object v4, p0, Lbtools/routingapp/BInstallerView;->downloadAction:Ljava/lang/String;

    .line 152
    new-instance v1, Lbtools/routingapp/BInstallerView$DownloadTask;

    invoke-virtual {p0}, Lbtools/routingapp/BInstallerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lbtools/routingapp/BInstallerView$DownloadTask;-><init>(Lbtools/routingapp/BInstallerView;Landroid/content/Context;)V

    .line 153
    .local v1, "downloadTask":Lbtools/routingapp/BInstallerView$DownloadTask;
    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v6

    invoke-virtual {v1, v4}, Lbtools/routingapp/BInstallerView$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method

.method private tileForBaseName(Ljava/lang/String;)I
    .locals 11
    .param p1, "basename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "uname":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v6

    .line 88
    :cond_1
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "slon":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "slat":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x57

    if-ne v7, v8, :cond_2

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v2, v7

    .line 92
    .local v2, "ilon":I
    :goto_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x53

    if-ne v7, v8, :cond_4

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v1, v7

    .line 94
    .local v1, "ilat":I
    :goto_2
    const/16 v7, -0xb4

    if-lt v2, v7, :cond_0

    const/16 v7, 0xb4

    if-ge v2, v7, :cond_0

    rem-int/lit8 v7, v2, 0x5

    if-nez v7, :cond_0

    .line 95
    const/16 v7, -0x5a

    if-lt v1, v7, :cond_0

    const/16 v7, 0x5a

    if-ge v1, v7, :cond_0

    rem-int/lit8 v7, v1, 0x5

    if-nez v7, :cond_0

    .line 96
    add-int/lit16 v6, v2, 0xb4

    div-int/lit8 v6, v6, 0x5

    add-int/lit8 v7, v1, 0x5a

    div-int/lit8 v7, v7, 0x5

    mul-int/lit8 v7, v7, 0x48

    add-int/2addr v6, v7

    goto :goto_0

    .line 91
    .end local v1    # "ilat":I
    .end local v2    # "ilon":I
    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x45

    if-ne v7, v8, :cond_3

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_1

    .line 93
    .restart local v2    # "ilon":I
    :cond_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x4e

    if-ne v7, v8, :cond_5

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_2
.end method

.method private tileIndex(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 169
    const/high16 v2, 0x42900000    # 72.0f

    mul-float/2addr v2, p1

    iget-object v3, p0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 170
    .local v0, "ix":I
    const/high16 v2, 0x42100000    # 36.0f

    mul-float/2addr v2, p2

    iget-object v3, p0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 171
    .local v1, "iy":I
    if-ltz v0, :cond_0

    const/16 v2, 0x48

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    const/16 v2, 0x24

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lbtools/routingapp/BInstallerView;->gridPos2Tileindex(II)I

    move-result v2

    .line 172
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0}, Lbtools/routingapp/BInstallerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method

.method private toggleDownload()V
    .locals 9

    .prologue
    .line 107
    iget-boolean v6, p0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    if-eqz v6, :cond_1

    .line 109
    const/4 v6, 0x1

    iput-boolean v6, p0, Lbtools/routingapp/BInstallerView;->downloadCanceled:Z

    .line 110
    const-string v6, "Canceling..."

    iput-object v6, p0, Lbtools/routingapp/BInstallerView;->downloadAction:Ljava/lang/String;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v4, -0x1

    .line 115
    .local v4, "tidx_min":I
    const v2, 0x7fffffff

    .line 118
    .local v2, "min_size":I
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_1
    const/16 v6, 0x48

    if-ge v0, v6, :cond_4

    .line 120
    const/4 v1, 0x0

    .local v1, "iy":I
    :goto_2
    const/16 v6, 0x24

    if-ge v1, v6, :cond_3

    .line 122
    invoke-direct {p0, v0, v1}, Lbtools/routingapp/BInstallerView;->gridPos2Tileindex(II)I

    move-result v3

    .line 123
    .local v3, "tidx":I
    iget-object v6, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v6, v6, v3

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 125
    invoke-static {v3}, Lbtools/routingapp/BInstallerSizes;->getRd5Size(I)I

    move-result v5

    .line 126
    .local v5, "tilesize":I
    if-lez v5, :cond_2

    if-ge v5, v2, :cond_2

    .line 128
    move v4, v3

    .line 129
    move v2, v5

    .line 120
    .end local v5    # "tilesize":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    .end local v3    # "tidx":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v1    # "iy":I
    :cond_4
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 136
    iget-object v6, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v7, v6, v4

    iget-object v8, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    aget v8, v8, v4

    and-int/lit8 v8, v8, 0x1

    xor-int/2addr v7, v8

    aput v7, v6, v4

    .line 137
    invoke-direct {p0, v4}, Lbtools/routingapp/BInstallerView;->startDownload(I)V

    goto :goto_0
.end method


# virtual methods
.method protected baseNameForTile(I)Ljava/lang/String;
    .locals 6
    .param p1, "tileIndex"    # I

    .prologue
    .line 71
    rem-int/lit8 v4, p1, 0x48

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v1, v4, -0xb4

    .line 72
    .local v1, "lon":I
    div-int/lit8 v4, p1, 0x48

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v0, v4, -0x5a

    .line 73
    .local v0, "lat":I
    if-gez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    neg-int v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "slon":Ljava/lang/String;
    :goto_0
    if-gez v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    neg-int v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "slat":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 73
    .end local v2    # "slat":Ljava/lang/String;
    .end local v3    # "slon":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    .restart local v3    # "slon":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "N"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public downloadDone(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    .line 159
    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0}, Lbtools/routingapp/BInstallerView;->scanExistingFiles()V

    .line 162
    invoke-direct {p0}, Lbtools/routingapp/BInstallerView;->toggleDownload()V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lbtools/routingapp/BInstallerView;->invalidate()V

    .line 165
    return-void
.end method

.method public isDownloadCanceled()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lbtools/routingapp/BInstallerView;->downloadCanceled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    if-nez v4, :cond_0

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    .line 304
    .local v34, "iw":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    .line 305
    .local v33, "ih":I
    move/from16 v0, v34

    int-to-float v4, v0

    const/high16 v6, 0x42900000    # 72.0f

    div-float v16, v4, v6

    .line 306
    .local v16, "fw":F
    move/from16 v0, v33

    int-to-float v4, v0

    const/high16 v6, 0x42100000    # 36.0f

    div-float v17, v4, v6

    .line 308
    .local v17, "fh":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    if-nez v4, :cond_1

    const/16 v21, 0x1

    .line 310
    .local v21, "drawGrid":Z
    :goto_0
    if-eqz v21, :cond_3

    .line 313
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 314
    .local v9, "pnt_1":Landroid/graphics/Paint;
    const v4, -0xff0100

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    const/16 v35, 0x1

    .local v35, "ix":I
    :goto_1
    const/16 v4, 0x48

    move/from16 v0, v35

    if-ge v0, v4, :cond_2

    .line 318
    move/from16 v0, v35

    int-to-float v4, v0

    mul-float v5, v16, v4

    .line 319
    .local v5, "fx":F
    const/4 v6, 0x0

    move/from16 v0, v33

    int-to-float v8, v0

    move-object/from16 v4, p1

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 308
    .end local v5    # "fx":F
    .end local v9    # "pnt_1":Landroid/graphics/Paint;
    .end local v21    # "drawGrid":Z
    .end local v35    # "ix":I
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 321
    .restart local v9    # "pnt_1":Landroid/graphics/Paint;
    .restart local v21    # "drawGrid":Z
    .restart local v35    # "ix":I
    :cond_2
    const/16 v36, 0x1

    .local v36, "iy":I
    :goto_2
    const/16 v4, 0x24

    move/from16 v0, v36

    if-ge v0, v4, :cond_3

    .line 323
    move/from16 v0, v36

    int-to-float v4, v0

    mul-float v12, v17, v4

    .line 324
    .local v12, "fy":F
    const/4 v11, 0x0

    move/from16 v0, v34

    int-to-float v13, v0

    move-object/from16 v10, p1

    move v14, v12

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 327
    .end local v9    # "pnt_1":Landroid/graphics/Paint;
    .end local v12    # "fy":F
    .end local v35    # "ix":I
    .end local v36    # "iy":I
    :cond_3
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    .line 328
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lbtools/routingapp/BInstallerView;->totalSize:J

    .line 329
    const/16 v28, 0x5

    .line 330
    .local v28, "mask2":I
    or-int/lit8 v19, v28, 0x8

    .line 331
    .local v19, "mask3":I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 332
    .local v15, "pnt_2":Landroid/graphics/Paint;
    const v4, -0x777778

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    const/16 v18, 0x4

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lbtools/routingapp/BInstallerView;->drawSelectedTiles(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIZZ)V

    .line 335
    const v4, -0xffff01

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 337
    const/16 v18, 0xc

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lbtools/routingapp/BInstallerView;->drawSelectedTiles(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIZZ)V

    .line 338
    const v4, -0xff0100

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 340
    const/16 v27, 0x1

    const/16 v29, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v30, v21

    invoke-direct/range {v22 .. v30}, Lbtools/routingapp/BInstallerView;->drawSelectedTiles(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIZZ)V

    .line 341
    const/16 v4, -0x100

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 343
    const/16 v27, 0x5

    const/16 v29, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v30, v21

    invoke-direct/range {v22 .. v30}, Lbtools/routingapp/BInstallerView;->drawSelectedTiles(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIZZ)V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BInstallerView;->matText:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 347
    new-instance v27, Landroid/graphics/Paint;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Paint;-><init>()V

    .line 348
    .local v27, "paint":Landroid/graphics/Paint;
    const/high16 v4, -0x10000

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    const-wide/32 v38, 0x100000

    .line 352
    .local v38, "mb":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    if-eqz v4, :cond_4

    .line 354
    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->currentDownloadSize:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-lez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->currentDownloadSize:J

    add-long v6, v6, v38

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    div-long v6, v6, v38

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " MB)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 355
    .local v37, "sizeHint":Ljava/lang/String;
    :goto_3
    const/high16 v4, 0x41f00000    # 30.0f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/routingapp/BInstallerView;->currentDownloadFile:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x1e

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BInstallerView;->downloadAction:Ljava/lang/String;

    const/high16 v6, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 359
    .end local v37    # "sizeHint":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    if-nez v4, :cond_5

    .line 361
    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    const-string v4, "Zoom in to see grid!"

    const/high16 v6, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    :cond_5
    const/high16 v4, 0x41a00000    # 20.0f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->totalSize:J

    add-long v6, v6, v38

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    div-long v6, v6, v38

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " MB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 369
    .local v40, "totmb":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->availableSize:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-ltz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->availableSize:J

    add-long v6, v6, v38

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    div-long v6, v6, v38

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " MB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 370
    .local v32, "freemb":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected segments="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x41c80000    # 25.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Free="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42340000    # 45.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 374
    const/16 v31, 0x0

    .line 375
    .local v31, "btnText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    if-eqz v4, :cond_a

    const-string v31, "Cancel Download"

    .line 378
    :cond_6
    :goto_5
    if-eqz v31, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnh:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v26, v0

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 381
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnh:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnh:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v26, v0

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 382
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnh:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v26, v0

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnh:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v26, v0

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 384
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v0, v4

    move/from16 v26, v0

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BInstallerView;->imgw:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/routingapp/BInstallerView;->imgh:I

    add-int/lit8 v6, v6, -0xa

    int-to-float v6, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 387
    :cond_7
    return-void

    .line 354
    .end local v31    # "btnText":Ljava/lang/String;
    .end local v32    # "freemb":Ljava/lang/String;
    .end local v40    # "totmb":Ljava/lang/String;
    :cond_8
    const-string v37, ""

    goto/16 :goto_3

    .line 369
    .restart local v40    # "totmb":Ljava/lang/String;
    :cond_9
    const-string v32, "?"

    goto/16 :goto_4

    .line 376
    .restart local v31    # "btnText":Ljava/lang/String;
    .restart local v32    # "freemb":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-lez v4, :cond_6

    const-string v31, "Start Download"

    goto/16 :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 286
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 434
    .local v19, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 437
    .local v18, "pointerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    .line 439
    .local v12, "maskedAction":I
    packed-switch v12, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BInstallerView;->invalidate()V

    .line 556
    const/16 v30, 0x1

    return v30

    .line 443
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/routingapp/BInstallerView;->lastDownX:F

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/routingapp/BInstallerView;->lastDownY:F

    goto :goto_0

    .line 450
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 452
    .local v17, "np":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v16

    .line 453
    .local v16, "nh":I
    if-eqz v16, :cond_0

    .line 455
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 456
    .local v26, "x0":F
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    .line 457
    .local v28, "y0":F
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v7

    .line 458
    .local v7, "hx0":F
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    .line 460
    .local v9, "hy0":F
    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 462
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    .line 463
    .local v27, "x1":F
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    .line 464
    .local v29, "y1":F
    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    .line 465
    .local v8, "hx1":F
    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    .line 467
    .local v10, "hy1":F
    sub-float v30, v27, v26

    sub-float v31, v27, v26

    mul-float v30, v30, v31

    sub-float v31, v29, v28

    sub-float v32, v29, v28

    mul-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v20, v0

    .line 468
    .local v20, "r":F
    sub-float v30, v8, v7

    sub-float v31, v8, v7

    mul-float v30, v30, v31

    sub-float v31, v10, v9

    sub-float v32, v10, v9

    mul-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v6, v0

    .line 470
    .local v6, "hr":F
    float-to-double v0, v6

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4024000000000000L    # 10.0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_0

    .line 472
    div-float v21, v20, v6

    .line 474
    .local v21, "ratio":F
    add-float v30, v27, v26

    const/high16 v31, 0x40000000    # 2.0f

    div-float v13, v30, v31

    .line 475
    .local v13, "mx":F
    add-float v30, v29, v28

    const/high16 v31, 0x40000000    # 2.0f

    div-float v14, v30, v31

    .line 477
    .local v14, "my":F
    invoke-direct/range {p0 .. p0}, Lbtools/routingapp/BInstallerView;->currentScale()F

    move-result v22

    .line 478
    .local v22, "scale":F
    mul-float v15, v22, v21

    .line 480
    .local v15, "newscale":F
    const/high16 v30, 0x41200000    # 10.0f

    cmpl-float v30, v15, v30

    if-lez v30, :cond_1

    const/high16 v30, 0x41200000    # 10.0f

    div-float v30, v30, v15

    mul-float v21, v21, v30

    .line 481
    :cond_1
    const/high16 v30, 0x3f000000    # 0.5f

    cmpg-float v30, v15, v30

    if-gez v30, :cond_2

    const/high16 v30, 0x3f000000    # 0.5f

    div-float v30, v30, v15

    mul-float v21, v21, v30

    .line 483
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 487
    invoke-direct/range {p0 .. p0}, Lbtools/routingapp/BInstallerView;->currentScale()F

    move-result v30

    const/high16 v31, 0x40400000    # 3.0f

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_4

    const/16 v24, 0x1

    .line 488
    .local v24, "tilesv":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    if-nez v24, :cond_3

    .line 490
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lbtools/routingapp/BInstallerView;->clearTileSelection(I)V

    .line 492
    :cond_3
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    goto/16 :goto_0

    .line 487
    .end local v24    # "tilesv":Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 497
    .end local v6    # "hr":F
    .end local v8    # "hx1":F
    .end local v10    # "hy1":F
    .end local v13    # "mx":F
    .end local v14    # "my":F
    .end local v15    # "newscale":F
    .end local v20    # "r":F
    .end local v21    # "ratio":F
    .end local v22    # "scale":F
    .end local v27    # "x1":F
    .end local v29    # "y1":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    sub-float v31, v26, v7

    sub-float v32, v28, v9

    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 503
    .end local v7    # "hx0":F
    .end local v9    # "hy0":F
    .end local v16    # "nh":I
    .end local v17    # "np":I
    .end local v26    # "x0":F
    .end local v28    # "y0":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v32

    sub-long v4, v30, v32

    .line 505
    .local v4, "downTime":J
    const-wide/16 v30, 0x5

    cmp-long v30, v4, v30

    if-ltz v30, :cond_0

    const-wide/16 v30, 0x1f4

    cmp-long v30, v4, v30

    if-gtz v30, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->lastDownX:F

    move/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    sub-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/high16 v31, 0x41200000    # 10.0f

    cmpl-float v30, v30, v31

    if-gtz v30, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->lastDownY:F

    move/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    sub-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/high16 v31, 0x41200000    # 10.0f

    cmpl-float v30, v30, v31

    if-gtz v30, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/routingapp/BInstallerView;->rd5Tiles:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-gtz v30, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->imgwOrig:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->btnw:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    cmpl-float v30, v30, v31

    if-lez v30, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->imghOrig:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->btnh:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/routingapp/BInstallerView;->scaleOrig:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    cmpl-float v30, v30, v31

    if-lez v30, :cond_7

    .line 518
    invoke-direct/range {p0 .. p0}, Lbtools/routingapp/BInstallerView;->toggleDownload()V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BInstallerView;->invalidate()V

    goto/16 :goto_0

    .line 523
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/routingapp/BInstallerView;->isDownloading:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 525
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 526
    .local v11, "imat":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 528
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v25, v0

    .line 529
    .local v25, "touchpoint":[F
    const/16 v30, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    aput v31, v25, v30

    .line 530
    const/16 v30, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    aput v31, v25, v30

    .line 531
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 533
    const/16 v30, 0x0

    aget v30, v25, v30

    const/16 v31, 0x1

    aget v31, v25, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lbtools/routingapp/BInstallerView;->tileIndex(FF)I

    move-result v23

    .line 534
    .local v23, "tidx":I
    const/16 v30, -0x1

    move/from16 v0, v23

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    move-object/from16 v30, v0

    aget v30, v30, v23

    and-int/lit8 v30, v30, 0x8

    if-nez v30, :cond_8

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    move-object/from16 v30, v0

    aget v31, v30, v23

    xor-int/lit8 v31, v31, 0x1

    aput v31, v30, v23

    .line 542
    :cond_8
    const/16 v30, 0x0

    aget v30, v25, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/routingapp/BInstallerView;->tx:F

    .line 543
    const/16 v30, 0x1

    aget v30, v25, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/routingapp/BInstallerView;->ty:F

    goto/16 :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startInstaller()V
    .locals 8

    .prologue
    .line 239
    invoke-virtual {p0}, Lbtools/routingapp/BInstallerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbtools/routingapp/ConfigHelper;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lbtools/routingapp/BInstallerView;->baseDir:Ljava/lang/String;

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lbtools/routingapp/BInstallerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 244
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v5, "world.png"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 245
    .local v2, "istr":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/16 v5, 0xa20

    new-array v5, v5, [I

    iput-object v5, p0, Lbtools/routingapp/BInstallerView;->tileStatus:[I

    .line 254
    invoke-direct {p0}, Lbtools/routingapp/BInstallerView;->scanExistingFiles()V

    .line 256
    iget v5, p0, Lbtools/routingapp/BInstallerView;->imgwOrig:I

    int-to-float v5, v5

    iget-object v6, p0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 257
    .local v3, "scaleX":F
    iget v5, p0, Lbtools/routingapp/BInstallerView;->imghOrig:I

    int-to-float v5, v5

    iget-object v6, p0, Lbtools/routingapp/BInstallerView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 259
    .local v4, "scaley":F
    cmpg-float v5, v3, v4

    if-gez v5, :cond_0

    .end local v3    # "scaleX":F
    :goto_0
    iput v3, p0, Lbtools/routingapp/BInstallerView;->viewscale:F

    .line 261
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    .line 262
    iget-object v5, p0, Lbtools/routingapp/BInstallerView;->mat:Landroid/graphics/Matrix;

    iget v6, p0, Lbtools/routingapp/BInstallerView;->viewscale:F

    iget v7, p0, Lbtools/routingapp/BInstallerView;->viewscale:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 263
    const/4 v5, 0x0

    iput-boolean v5, p0, Lbtools/routingapp/BInstallerView;->tilesVisible:Z

    .line 264
    return-void

    .line 248
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "istr":Ljava/io/InputStream;
    .end local v4    # "scaley":F
    :catch_0
    move-exception v1

    .line 250
    .local v1, "io":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "cannot read world.png from assets"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "io":Ljava/io/IOException;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "istr":Ljava/io/InputStream;
    .restart local v3    # "scaleX":F
    .restart local v4    # "scaley":F
    :cond_0
    move v3, v4

    .line 259
    goto :goto_0
.end method

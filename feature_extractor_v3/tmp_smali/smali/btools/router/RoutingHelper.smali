.class public final Lbtools/router/RoutingHelper;
.super Ljava/lang/Object;
.source "RoutingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdditionalMaptoolDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "segmentDir"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0}, Lbtools/mapaccess/StorageConfigHelper;->getAdditionalMaptoolDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondarySegmentDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "segmentDir"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lbtools/mapaccess/StorageConfigHelper;->getSecondarySegmentDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static hasAnyDatafiles(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "fileNames":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 45
    .local v0, "fileName":Ljava/lang/String;
    const-string v5, ".rd5"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 47
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    return v2

    .line 43
    .restart local v0    # "fileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hasDirectoryAnyDatafiles(Ljava/lang/String;)Z
    .locals 2
    .param p0, "segmentDir"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbtools/router/RoutingHelper;->hasAnyDatafiles(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    .line 32
    :cond_0
    invoke-static {p0}, Lbtools/mapaccess/StorageConfigHelper;->getSecondarySegmentDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "secondary":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 35
    invoke-static {v0}, Lbtools/router/RoutingHelper;->hasAnyDatafiles(Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lbtools/router/OsmTrack$OsmPathElementHolder;
.super Ljava/lang/Object;
.source "OsmTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtools/router/OsmTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OsmPathElementHolder"
.end annotation


# instance fields
.field public nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

.field public node:Lbtools/router/OsmPathElement;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbtools/router/OsmTrack$1;)V
    .locals 0
    .param p1, "x0"    # Lbtools/router/OsmTrack$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lbtools/router/OsmTrack$OsmPathElementHolder;-><init>()V

    return-void
.end method

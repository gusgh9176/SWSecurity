.class public final Lcom/akop/bach/PSN$GameCatalogList;
.super Ljava/lang/Object;
.source "PSN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameCatalogList"
.end annotation


# instance fields
.field public Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/PSN$GameCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field public MorePages:Z

.field public PageNumber:I

.field public PageSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/PSN$GameCatalogList;->Items:Ljava/util/List;

    .line 570
    iput v1, p0, Lcom/akop/bach/PSN$GameCatalogList;->PageNumber:I

    .line 571
    iput v1, p0, Lcom/akop/bach/PSN$GameCatalogList;->PageSize:I

    .line 572
    iput-boolean v1, p0, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    return-void
.end method

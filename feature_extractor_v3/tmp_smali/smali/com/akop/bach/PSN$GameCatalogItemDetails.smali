.class public final Lcom/akop/bach/PSN$GameCatalogItemDetails;
.super Ljava/lang/Object;
.source "PSN.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameCatalogItemDetails"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13160016213ebc47L


# instance fields
.field public BoxartUrl:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public Genre:Ljava/lang/String;

.field public OnlinePlayers:Ljava/lang/String;

.field public Platform:Ljava/lang/String;

.field public Players:Ljava/lang/String;

.field public Publisher:Ljava/lang/String;

.field public Rating:Ljava/lang/String;

.field public ReleaseDate:Ljava/lang/String;

.field public ReleaseDateTicks:J

.field public ScreenshotsLarge:[Ljava/lang/String;

.field public ScreenshotsThumb:[Ljava/lang/String;

.field public Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Title:Ljava/lang/String;

    .line 534
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    .line 535
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->BoxartUrl:Ljava/lang/String;

    .line 537
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ReleaseDate:Ljava/lang/String;

    .line 538
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ReleaseDateTicks:J

    .line 539
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Platform:Ljava/lang/String;

    .line 540
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Genre:Ljava/lang/String;

    .line 541
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Rating:Ljava/lang/String;

    .line 542
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Players:Ljava/lang/String;

    .line 543
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->OnlinePlayers:Ljava/lang/String;

    .line 544
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Publisher:Ljava/lang/String;

    .line 546
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    .line 547
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    return-void
.end method

.method public static fromItem(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .locals 4
    .param p0, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 551
    new-instance v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;

    invoke-direct {v0}, Lcom/akop/bach/PSN$GameCatalogItemDetails;-><init>()V

    .line 553
    .local v0, "details":Lcom/akop/bach/PSN$GameCatalogItemDetails;
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Title:Ljava/lang/String;

    .line 554
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->BoxartUrl:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ReleaseDate:Ljava/lang/String;

    .line 556
    iget-wide v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J

    iput-wide v2, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ReleaseDateTicks:J

    .line 557
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Platform:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Platform:Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Genre:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Genre:Ljava/lang/String;

    .line 559
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Players:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Players:Ljava/lang/String;

    .line 560
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->OnlinePlayers:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->OnlinePlayers:Ljava/lang/String;

    .line 561
    iget-object v1, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Publisher:Ljava/lang/String;

    iput-object v1, v0, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Publisher:Ljava/lang/String;

    .line 563
    return-object v0
.end method

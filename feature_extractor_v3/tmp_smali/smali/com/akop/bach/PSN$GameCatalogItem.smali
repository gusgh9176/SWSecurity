.class public final Lcom/akop/bach/PSN$GameCatalogItem;
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
    name = "GameCatalogItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1cecda1a9d7b5d2aL


# instance fields
.field public BoxartUrl:Ljava/lang/String;

.field public DetailUrl:Ljava/lang/String;

.field public Genre:Ljava/lang/String;

.field public OnlinePlayers:Ljava/lang/String;

.field public Overview:Ljava/lang/String;

.field public Platform:Ljava/lang/String;

.field public Players:Ljava/lang/String;

.field public Publisher:Ljava/lang/String;

.field public ReleaseDate:Ljava/lang/String;

.field public ReleaseDateTicks:J

.field public Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    .line 580
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Overview:Ljava/lang/String;

    .line 581
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    .line 582
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    .line 584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J

    .line 585
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    .line 586
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Platform:Ljava/lang/String;

    .line 587
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Genre:Ljava/lang/String;

    .line 588
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Players:Ljava/lang/String;

    .line 589
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->OnlinePlayers:Ljava/lang/String;

    .line 590
    iput-object v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->Publisher:Ljava/lang/String;

    return-void
.end method

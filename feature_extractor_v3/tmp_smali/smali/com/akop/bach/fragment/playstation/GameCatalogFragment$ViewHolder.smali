.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;
.super Ljava/lang/Object;
.source "GameCatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public genre:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public overview:Landroid/widget/TextView;

.field public publisher:Landroid/widget/TextView;

.field public releaseDate:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;-><init>()V

    return-void
.end method

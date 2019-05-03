.class Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public gameIcon:Landroid/widget/ImageView;

.field public oppIcon:Landroid/widget/ImageView;

.field public oppNotPlayed:Landroid/widget/TextView;

.field public oppProgress:Landroid/widget/TextView;

.field public oppSection:Landroid/view/View;

.field public oppTrophiesAll:Landroid/widget/TextView;

.field public oppTrophiesBronze:Landroid/widget/TextView;

.field public oppTrophiesGold:Landroid/widget/TextView;

.field public oppTrophiesPlat:Landroid/widget/TextView;

.field public oppTrophiesSilver:Landroid/widget/TextView;

.field public selfIcon:Landroid/widget/ImageView;

.field public selfNotPlayed:Landroid/widget/TextView;

.field public selfProgress:Landroid/widget/TextView;

.field public selfSection:Landroid/view/View;

.field public selfTrophiesAll:Landroid/widget/TextView;

.field public selfTrophiesBronze:Landroid/widget/TextView;

.field public selfTrophiesGold:Landroid/widget/TextView;

.field public selfTrophiesPlat:Landroid/widget/TextView;

.field public selfTrophiesSilver:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;-><init>()V

    return-void
.end method

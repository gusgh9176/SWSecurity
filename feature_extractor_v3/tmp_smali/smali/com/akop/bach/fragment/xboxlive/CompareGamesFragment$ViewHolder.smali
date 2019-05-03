.class Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public boxart:Landroid/widget/ImageView;

.field public gameUrl:Ljava/lang/String;

.field public myAchStats:Landroid/widget/TextView;

.field public myGamerpic:Landroid/widget/ImageView;

.field public myPointStats:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public yourAchStats:Landroid/widget/TextView;

.field public yourGamerpic:Landroid/widget/ImageView;

.field public yourPointStats:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$1;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;-><init>()V

    return-void
.end method

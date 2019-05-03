.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "CompareAchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public myAcquired:Landroid/widget/TextView;

.field public myGamerpic:Landroid/widget/ImageView;

.field public score:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public yourAcquired:Landroid/widget/TextView;

.field public yourGamerpic:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;-><init>()V

    return-void
.end method

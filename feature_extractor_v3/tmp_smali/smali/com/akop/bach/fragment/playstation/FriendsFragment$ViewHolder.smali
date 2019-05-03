.class Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public avatar:Landroid/widget/ImageView;

.field public currentActivity:Landroid/widget/TextView;

.field public isFavorite:Landroid/widget/ImageView;

.field public isPlus:Landroid/widget/ImageView;

.field public level:Landroid/widget/TextView;

.field public onlineId:Landroid/widget/TextView;

.field public trophiesAll:Landroid/widget/TextView;

.field public trophiesBronze:Landroid/widget/TextView;

.field public trophiesGold:Landroid/widget/TextView;

.field public trophiesPlat:Landroid/widget/TextView;

.field public trophiesSilver:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/FriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/FriendsFragment$1;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;-><init>()V

    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$ViewHolder;
.super Ljava/lang/Object;
.source "RecentPlayersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public avatarIcon:Landroid/widget/ImageView;

.field public gamerscore:Landroid/widget/TextView;

.field public gamertag:Landroid/widget/TextView;

.field public status:Landroid/widget/TextView;

.field public titleIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$1;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/RecentPlayersFragment$ViewHolder;-><init>()V

    return-void
.end method

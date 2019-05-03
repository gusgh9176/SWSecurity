.class Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "CompareTrophiesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public oppEarned:Landroid/widget/TextView;

.field public oppIcon:Landroid/widget/ImageView;

.field public selfEarned:Landroid/widget/TextView;

.field public selfIcon:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public typeIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;-><init>()V

    return-void
.end method

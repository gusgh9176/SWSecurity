.class Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "TrophiesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/TrophiesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public earned:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

.field public title:Landroid/widget/TextView;

.field public typeIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;Lcom/akop/bach/fragment/playstation/TrophiesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V

    return-void
.end method

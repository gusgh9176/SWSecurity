.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public acquired:Landroid/widget/TextView;

.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public pointStats:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)V

    return-void
.end method

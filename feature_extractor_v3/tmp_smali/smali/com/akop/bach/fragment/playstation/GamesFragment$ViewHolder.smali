.class Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

.field public title:Landroid/widget/TextView;

.field public trophiesAll:Landroid/widget/TextView;

.field public trophiesBronze:Landroid/widget/TextView;

.field public trophiesGold:Landroid/widget/TextView;

.field public trophiesPlat:Landroid/widget/TextView;

.field public trophiesSilver:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/playstation/GamesFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/GamesFragment;Lcom/akop/bach/fragment/playstation/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/GamesFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/playstation/GamesFragment$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment;)V

    return-void
.end method

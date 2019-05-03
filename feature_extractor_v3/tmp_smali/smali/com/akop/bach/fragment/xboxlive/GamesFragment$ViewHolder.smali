.class Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public achStats:Landroid/widget/TextView;

.field public beacon:Landroid/widget/ImageView;

.field public gameUrl:Ljava/lang/String;

.field public icon:Landroid/widget/ImageView;

.field public lastPlayed:Landroid/widget/TextView;

.field public pointStats:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)V

    return-void
.end method

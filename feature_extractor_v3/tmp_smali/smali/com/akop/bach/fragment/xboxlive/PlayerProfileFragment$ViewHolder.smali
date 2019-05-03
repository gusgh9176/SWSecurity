.class Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;
.super Ljava/lang/Object;
.source "PlayerProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field avatar:Landroid/widget/ImageView;

.field avatarBody:Landroid/widget/ImageView;

.field beaconRoot:Landroid/widget/LinearLayout;

.field gamerScore:Landroid/widget/TextView;

.field gamertag:Landroid/widget/TextView;

.field info:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    return-void
.end method

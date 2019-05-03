.class Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;
.super Ljava/lang/Object;
.source "FriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
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

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V

    return-void
.end method

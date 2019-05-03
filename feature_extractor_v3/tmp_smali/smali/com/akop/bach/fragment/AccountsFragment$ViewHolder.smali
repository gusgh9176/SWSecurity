.class Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "AccountsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/AccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field avatarIcon:Landroid/widget/ImageView;

.field description:Landroid/widget/TextView;

.field gamertag:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/AccountsFragment;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/AccountsFragment;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/AccountsFragment;Lcom/akop/bach/fragment/AccountsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/AccountsFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/AccountsFragment$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/AccountsFragment;)V

    return-void
.end method

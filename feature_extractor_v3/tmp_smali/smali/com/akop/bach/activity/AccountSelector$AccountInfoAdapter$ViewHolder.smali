.class Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AccountSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field avatarIcon:Landroid/widget/ImageView;

.field description:Landroid/widget/TextView;

.field gamertag:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->this$1:Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;Lcom/akop/bach/activity/AccountSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;
    .param p2, "x1"    # Lcom/akop/bach/activity/AccountSelector$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;)V

    return-void
.end method

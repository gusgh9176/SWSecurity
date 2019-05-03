.class Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NewAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;->this$1:Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;Lcom/akop/bach/activity/NewAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;
    .param p2, "x1"    # Lcom/akop/bach/activity/NewAccount$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;)V

    return-void
.end method

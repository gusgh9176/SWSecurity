.class Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field gamerpic:Landroid/widget/ImageView;

.field sender:Landroid/widget/TextView;

.field sent:Landroid/widget/TextView;

.field summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

.field type:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V

    return-void
.end method

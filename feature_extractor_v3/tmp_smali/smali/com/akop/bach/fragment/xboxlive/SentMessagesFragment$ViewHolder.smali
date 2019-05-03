.class Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "SentMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field sender:Landroid/widget/TextView;

.field sent:Landroid/widget/TextView;

.field summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

.field type:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;
    .param p2, "x1"    # Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;)V

    return-void
.end method

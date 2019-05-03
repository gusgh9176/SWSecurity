.class Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BlogEntriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field posted:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;

.field thumb:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;
    .param p2, "x1"    # Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;)V

    return-void
.end method

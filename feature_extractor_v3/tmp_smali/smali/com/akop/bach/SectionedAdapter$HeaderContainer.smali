.class Lcom/akop/bach/SectionedAdapter$HeaderContainer;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/SectionedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderContainer"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;->mTemplate:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;->mAdapter:Landroid/widget/Adapter;

    .line 51
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;->mTemplate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;->mTemplate:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.class Lcom/akop/bach/activity/RibbonedSinglePane$3;
.super Ljava/lang/Object;
.source "RibbonedSinglePane.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/RibbonedSinglePane;->updateRibbon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedSinglePane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$3;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$3;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$3;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedSinglePane;->mAccount:Lcom/akop/bach/BasicAccount;

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$3;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-virtual {v0, v1}, Lcom/akop/bach/BasicAccount;->open(Landroid/content/Context;)V

    .line 193
    :cond_0
    return-void
.end method

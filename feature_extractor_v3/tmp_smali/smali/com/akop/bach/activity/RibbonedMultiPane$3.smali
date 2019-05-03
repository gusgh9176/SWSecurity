.class Lcom/akop/bach/activity/RibbonedMultiPane$3;
.super Ljava/lang/Object;
.source "RibbonedMultiPane.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/RibbonedMultiPane;->updateRibbon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedMultiPane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$3;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$3;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$3;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane;->mAccount:Lcom/akop/bach/BasicAccount;

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$3;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-virtual {v0, v1}, Lcom/akop/bach/BasicAccount;->open(Landroid/content/Context;)V

    .line 251
    :cond_0
    return-void
.end method

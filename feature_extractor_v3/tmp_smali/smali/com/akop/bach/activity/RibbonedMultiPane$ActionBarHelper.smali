.class Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;
.super Ljava/lang/Object;
.source "RibbonedMultiPane.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedMultiPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedMultiPane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-virtual {v0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-virtual {v1}, Lcom/akop/bach/activity/RibbonedMultiPane;->getActionBarLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 154
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    invoke-virtual {v0}, Lcom/akop/bach/activity/RibbonedMultiPane;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

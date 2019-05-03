.class Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;
.super Ljava/lang/Object;
.source "RibbonedSinglePane.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/RibbonedSinglePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/RibbonedSinglePane;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedSinglePane;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-virtual {v0}, Lcom/akop/bach/activity/RibbonedSinglePane;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-virtual {v1}, Lcom/akop/bach/activity/RibbonedSinglePane;->getActionBarLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 125
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedSinglePane$ActionBarHelper;->this$0:Lcom/akop/bach/activity/RibbonedSinglePane;

    invoke-virtual {v0}, Lcom/akop/bach/activity/RibbonedSinglePane;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

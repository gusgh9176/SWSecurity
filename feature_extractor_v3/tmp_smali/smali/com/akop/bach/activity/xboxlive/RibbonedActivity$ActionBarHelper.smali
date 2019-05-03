.class Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;
.super Ljava/lang/Object;
.source "RibbonedActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 74
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$ActionBarHelper;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

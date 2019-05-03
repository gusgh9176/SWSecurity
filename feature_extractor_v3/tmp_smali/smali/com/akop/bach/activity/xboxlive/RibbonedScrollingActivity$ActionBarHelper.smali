.class Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;
.super Ljava/lang/Object;
.source "RibbonedScrollingActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 143
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$ActionBarHelper;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

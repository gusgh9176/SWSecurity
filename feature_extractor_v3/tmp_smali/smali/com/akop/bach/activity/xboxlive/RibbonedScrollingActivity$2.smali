.class Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;
.super Ljava/lang/Object;
.source "RibbonedScrollingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->updateRibbon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedScrollingActivity;

    invoke-virtual {v0, v1}, Lcom/akop/bach/XboxLiveAccount;->open(Landroid/content/Context;)V

    .line 185
    :cond_0
    return-void
.end method

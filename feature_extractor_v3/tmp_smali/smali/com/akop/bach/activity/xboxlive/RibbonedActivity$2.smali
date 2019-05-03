.class Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;
.super Ljava/lang/Object;
.source "RibbonedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->updateRibbon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/RibbonedActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$2;->this$0:Lcom/akop/bach/activity/xboxlive/RibbonedActivity;

    invoke-virtual {v0, v1}, Lcom/akop/bach/XboxLiveAccount;->open(Landroid/content/Context;)V

    .line 262
    :cond_0
    return-void
.end method

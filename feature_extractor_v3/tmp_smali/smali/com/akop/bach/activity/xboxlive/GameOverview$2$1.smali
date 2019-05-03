.class Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;
.super Ljava/lang/Object;
.source "GameOverview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iput-object p2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 322
    :try_start_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/akop/bach/ImageCache;->downloadImage(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 341
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-virtual {v3, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->startActivity(Landroid/content/Intent;)V

    .line 345
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$300(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    move-result-object v3

    new-instance v4, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$2;

    invoke-direct {v4, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$2;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;)V

    invoke-virtual {v3, v4}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->post(Ljava/lang/Runnable;)Z

    .line 357
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$300(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    move-result-object v3

    new-instance v4, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$1;

    invoke-direct {v4, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$1;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;)V

    invoke-virtual {v3, v4}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->post(Ljava/lang/Runnable;)Z

    .line 335
    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    iget-object v3, v3, Lcom/akop/bach/activity/xboxlive/GameOverview;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-virtual {v3, v0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.class Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$2;
.super Ljava/lang/Object;
.source "GameOverview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$2;->this$2:Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1$2;->this$2:Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;->this$1:Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    iget-object v0, v0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 353
    return-void
.end method

.class Lcom/akop/bach/activity/RibbonedMultiPane$2$1;
.super Ljava/lang/Object;
.source "RibbonedMultiPane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/RibbonedMultiPane$2;->onControllerBusy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/activity/RibbonedMultiPane$2;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane$2;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2$1;->this$1:Lcom/akop/bach/activity/RibbonedMultiPane$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/akop/bach/activity/RibbonedMultiPane$2$1;->this$1:Lcom/akop/bach/activity/RibbonedMultiPane$2;

    iget-object v0, v0, Lcom/akop/bach/activity/RibbonedMultiPane$2;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/RibbonedMultiPane;->toggleProgressBar(Z)V

    .line 96
    return-void
.end method

.class Lcom/akop/bach/fragment/GenericFragment$GenericHandler$1;
.super Ljava/lang/Object;
.source "GenericFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/GenericFragment$GenericHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/akop/bach/fragment/GenericFragment$GenericHandler$1;->this$0:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    iput-object p2, p0, Lcom/akop/bach/fragment/GenericFragment$GenericHandler$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/GenericFragment$GenericHandler$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method

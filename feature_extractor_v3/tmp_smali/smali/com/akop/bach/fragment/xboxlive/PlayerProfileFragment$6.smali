.class Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$6;
.super Ljava/lang/Object;
.source "PlayerProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$6;->this$0:Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    .line 449
    return-void
.end method

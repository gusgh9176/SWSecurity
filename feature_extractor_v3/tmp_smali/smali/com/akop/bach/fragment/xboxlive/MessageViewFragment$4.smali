.class Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$4;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V

    .line 227
    return-void
.end method

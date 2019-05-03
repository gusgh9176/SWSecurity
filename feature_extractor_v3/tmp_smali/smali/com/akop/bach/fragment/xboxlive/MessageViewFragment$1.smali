.class Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
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
    .line 66
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    invoke-static {}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->access$100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1$1;-><init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

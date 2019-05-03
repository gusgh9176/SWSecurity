.class Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;
.super Ljava/lang/Object;
.source "MessageSelectRecipients.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-static {v0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->access$200(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

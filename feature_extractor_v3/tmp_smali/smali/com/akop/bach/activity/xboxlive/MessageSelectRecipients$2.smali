.class Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;
.super Ljava/lang/Object;
.source "MessageSelectRecipients.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->loadIconsInBackground()V
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
    .line 335
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 339
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 341
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->access$300(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    .line 343
    .local v9, "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-virtual {v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    .end local v9    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    :cond_1
    return-void

    .line 346
    .restart local v9    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    :cond_2
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->access$100(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 349
    .local v0, "cachedIcon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 351
    :cond_3
    iget-object v2, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 356
    .local v8, "icon":Landroid/graphics/Bitmap;
    if-nez v8, :cond_0

    .line 358
    iget-object v2, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$2;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    const-wide/16 v4, 0x0

    iget-object v6, v9, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    goto :goto_0
.end method

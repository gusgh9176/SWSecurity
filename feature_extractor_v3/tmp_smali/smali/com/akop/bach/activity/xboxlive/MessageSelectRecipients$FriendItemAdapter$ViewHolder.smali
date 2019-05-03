.class Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessageSelectRecipients.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field gamerpic:Landroid/widget/ImageView;

.field gamertag:Landroid/widget/TextView;

.field isSelected:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->this$1:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;
    .param p2, "x1"    # Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;)V

    return-void
.end method

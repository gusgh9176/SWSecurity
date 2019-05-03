.class Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FriendSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public avatar:Landroid/widget/ImageView;

.field public screenName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->this$1:Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;Lcom/akop/bach/activity/FriendSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;
    .param p2, "x1"    # Lcom/akop/bach/activity/FriendSelector$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;)V

    return-void
.end method

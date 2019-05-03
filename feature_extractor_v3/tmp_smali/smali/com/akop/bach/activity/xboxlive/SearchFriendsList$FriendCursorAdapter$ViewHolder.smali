.class Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchFriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public avatar:Landroid/widget/ImageView;

.field public gamerscore:Landroid/widget/TextView;

.field public gamertag:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->this$1:Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;Lcom/akop/bach/activity/xboxlive/SearchFriendsList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;
    .param p2, "x1"    # Lcom/akop/bach/activity/xboxlive/SearchFriendsList$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;)V

    return-void
.end method

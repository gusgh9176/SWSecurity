.class Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;
.super Lcom/akop/bach/TaskController$CustomTask;
.source "FriendsOfFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->synchronizeWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/akop/bach/TaskController$CustomTask",
        "<",
        "Lcom/akop/bach/XboxLive$FriendsOfFriend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-direct {p0}, Lcom/akop/bach/TaskController$CustomTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 606
    new-instance v1, Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-virtual {v2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 610
    .local v1, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v2}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1800(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendsOfFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$FriendsOfFriend;

    move-result-object v0

    .line 613
    .local v0, "fof":Lcom/akop/bach/XboxLive$FriendsOfFriend;
    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$4;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 619
    return-void

    .line 617
    .end local v0    # "fof":Lcom/akop/bach/XboxLive$FriendsOfFriend;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v2
.end method

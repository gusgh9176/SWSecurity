.class Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;
.super Landroid/database/ContentObserver;
.source "FriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 90
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V

    .line 91
    return-void
.end method

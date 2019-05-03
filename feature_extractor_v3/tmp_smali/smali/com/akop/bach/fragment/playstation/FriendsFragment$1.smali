.class Lcom/akop/bach/fragment/playstation/FriendsFragment$1;
.super Landroid/database/ContentObserver;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 138
    invoke-static {}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->access$100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    move-result-object v0

    new-instance v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/FriendsFragment$1$1;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

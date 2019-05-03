.class Lcom/akop/bach/fragment/playstation/FriendsFragment$1$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/FriendsFragment$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/FriendsFragment$1;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/FriendsFragment$1;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/FriendsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/FriendsFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->access$000(Lcom/akop/bach/fragment/playstation/FriendsFragment;)V

    .line 144
    return-void
.end method

.class Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$2;
.super Landroid/database/ContentObserver;
.source "AccountProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 93
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$2;->this$0:Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V

    .line 94
    return-void
.end method

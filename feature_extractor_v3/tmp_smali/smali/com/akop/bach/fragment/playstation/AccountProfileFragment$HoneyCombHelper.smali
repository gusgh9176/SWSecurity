.class Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/AccountProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoneyCombHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/AccountProfileFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;->this$0:Lcom/akop/bach/fragment/playstation/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateMenu()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;->this$0:Lcom/akop/bach/fragment/playstation/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 84
    return-void
.end method

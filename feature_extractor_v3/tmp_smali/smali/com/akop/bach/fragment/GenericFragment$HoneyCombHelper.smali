.class public Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;
.super Ljava/lang/Object;
.source "GenericFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/GenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HoneyCombHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/GenericFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/GenericFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public invalidateMenu()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->this$0:Lcom/akop/bach/fragment/GenericFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/GenericFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 76
    return-void
.end method

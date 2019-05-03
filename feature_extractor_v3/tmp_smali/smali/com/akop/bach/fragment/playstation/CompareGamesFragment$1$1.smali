.class Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1$1;
.super Ljava/lang/Object;
.source "CompareGamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$200(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$200(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_0
    return-void
.end method

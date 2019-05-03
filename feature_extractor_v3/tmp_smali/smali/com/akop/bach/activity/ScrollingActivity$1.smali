.class Lcom/akop/bach/activity/ScrollingActivity$1;
.super Ljava/lang/Object;
.source "ScrollingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/ScrollingActivity;->rebind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/ScrollingActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/ScrollingActivity;Landroid/database/Cursor;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iput-object p2, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$list:Ljava/util/List;

    iput p4, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 293
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v2, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/ScrollingActivity;->getListItem(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 301
    iget-object v0, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->this$0:Lcom/akop/bach/activity/ScrollingActivity;

    iget-object v1, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$list:Ljava/util/List;

    iget v2, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$start:I

    iget-object v3, p0, Lcom/akop/bach/activity/ScrollingActivity$1;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/activity/ScrollingActivity;->initializeList(Ljava/util/List;II)V

    .line 302
    return-void
.end method

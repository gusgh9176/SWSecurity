.class Lcom/olivephone/cu/TextNewsActivity$6;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$6;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$6;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity;->access$0(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 316
    const/4 v0, 0x0

    return v0
.end method

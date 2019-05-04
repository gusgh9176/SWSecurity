.class Lcom/olivephone/cu/ImageNewsActivity$12$1;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/ImageNewsActivity$12;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$1;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$12$1;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    invoke-static {v0}, Lcom/olivephone/cu/ImageNewsActivity$12;->access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

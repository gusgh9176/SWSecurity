.class Lcom/olivephone/cu/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$5;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$5;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-static {v0}, Lcom/olivephone/cu/SettingActivity;->access$0(Lcom/olivephone/cu/SettingActivity;)V

    .line 326
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$5;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-static {v0}, Lcom/olivephone/cu/SettingActivity;->access$1(Lcom/olivephone/cu/SettingActivity;)V

    .line 327
    const/4 v0, 0x0

    return v0
.end method

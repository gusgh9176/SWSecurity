.class Lcom/olivephone/cu/SettingActivity$4;
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
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$4;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$4;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-static {v1}, Lcom/olivephone/cu/SettingActivity;->access$0(Lcom/olivephone/cu/SettingActivity;)V

    .line 316
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$4;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/SettingActivity;->finish()V

    .line 317
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$4;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 318
    const-class v2, Lcom/olivephone/cu/SettingActivity;

    .line 317
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v0, "intent3":Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$4;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 320
    const/4 v1, 0x0

    return v1
.end method

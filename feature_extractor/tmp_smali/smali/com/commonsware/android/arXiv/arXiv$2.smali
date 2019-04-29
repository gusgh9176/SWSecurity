.class Lcom/commonsware/android/arXiv/arXiv$2;
.super Landroid/app/Dialog;
.source "arXiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/arXiv;->applyMenuChoice(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/arXiv;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/arXiv;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/arXiv$2;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    .line 339
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 341
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/arXiv$2;->dismiss()V

    .line 343
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

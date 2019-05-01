.class public Lcom/olivephone/util/DisplayToast;
.super Ljava/lang/Object;
.source "DisplayToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10
    return-void
.end method

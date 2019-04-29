.class public Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "arXiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public text1:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;


# direct methods
.method public constructor <init>(Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;->this$1:Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

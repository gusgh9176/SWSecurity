.class public Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RSSListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public linLay:Landroid/widget/LinearLayout;

.field public text1:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;


# direct methods
.method public constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->this$1:Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

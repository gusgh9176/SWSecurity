.class public final Lcom/akop/bach/XboxLive$RecentPlayers;
.super Ljava/lang/Object;
.source "XboxLive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecentPlayers"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x540e8cb18ba97655L


# instance fields
.field public Players:Lcom/akop/bach/XboxLive$RecentPlayersCursor;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1751
    new-instance v0, Lcom/akop/bach/XboxLive$RecentPlayersCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$RecentPlayers;->Players:Lcom/akop/bach/XboxLive$RecentPlayersCursor;

    .line 1752
    return-void
.end method

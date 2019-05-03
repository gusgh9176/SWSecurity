.class public final Lcom/akop/bach/PSN$ComparedGameInfo;
.super Ljava/lang/Object;
.source "PSN.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparedGameInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71e5a48e415c03c2L


# instance fields
.field public cursor:Lcom/akop/bach/PSN$ComparedGameCursor;

.field public myAvatarIconUrl:Ljava/lang/String;

.field public yourAvatarIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object v0, p0, Lcom/akop/bach/PSN$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    .line 704
    iput-object v0, p0, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    .line 705
    new-instance v0, Lcom/akop/bach/PSN$ComparedGameCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/PSN$ComparedGameCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/PSN$ComparedGameInfo;->cursor:Lcom/akop/bach/PSN$ComparedGameCursor;

    .line 706
    return-void
.end method

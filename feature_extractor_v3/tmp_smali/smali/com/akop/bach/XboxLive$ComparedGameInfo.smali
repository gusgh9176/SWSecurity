.class public final Lcom/akop/bach/XboxLive$ComparedGameInfo;
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
    name = "ComparedGameInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d2408150a9c11b7L


# instance fields
.field public cursor:Lcom/akop/bach/XboxLive$ComparedGameCursor;

.field public myAvatarIconUrl:Ljava/lang/String;

.field public myGamerscore:I

.field public myGamesPlayed:I

.field public overviewUrl:Ljava/lang/String;

.field public yourAvatarIconUrl:Ljava/lang/String;

.field public yourGamerscore:I

.field public yourGamesPlayed:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    new-instance v0, Lcom/akop/bach/XboxLive$ComparedGameCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/XboxLive$ComparedGameCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->cursor:Lcom/akop/bach/XboxLive$ComparedGameCursor;

    .line 1650
    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myGamesPlayed:I

    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->myGamerscore:I

    .line 1651
    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourGamesPlayed:I

    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedGameInfo;->yourGamerscore:I

    .line 1652
    return-void
.end method

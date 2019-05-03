.class public final Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
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
    name = "ComparedAchievementInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6fc3df9ebd2cbd74L


# instance fields
.field public cursor:Lcom/akop/bach/XboxLive$ComparedAchievementCursor;

.field public myAvatarIconUrl:Ljava/lang/String;

.field public myGamerscore:I

.field public totalGamerscore:I

.field public yourAvatarIconUrl:Ljava/lang/String;

.field public yourGamerscore:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    new-instance v0, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->cursor:Lcom/akop/bach/XboxLive$ComparedAchievementCursor;

    .line 1738
    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->yourGamerscore:I

    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->myGamerscore:I

    .line 1739
    iput v1, p0, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->totalGamerscore:I

    .line 1740
    return-void
.end method

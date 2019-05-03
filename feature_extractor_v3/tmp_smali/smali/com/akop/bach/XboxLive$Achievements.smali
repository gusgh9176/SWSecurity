.class public final Lcom/akop/bach/XboxLive$Achievements;
.super Ljava/lang/Object;
.source "XboxLive.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Achievements"
.end annotation


# static fields
.field public static final ACQUIRED:Ljava/lang/String; = "Acquired"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.akop.spark.xbl-achievement"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.akop.spark.xbl-achievement"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "ListIndex ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final GAME_ID:Ljava/lang/String; = "GameId"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field public static final INDEX:Ljava/lang/String; = "ListIndex"

.field public static final LOCKED:Ljava/lang/String; = "Locked"

.field public static final POINTS:Ljava/lang/String; = "Points"

.field public static final TITLE:Ljava/lang/String; = "Title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1008
    const-string v0, "content://com.akop.bach.xboxliveprovider/achievements"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$Achievements;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

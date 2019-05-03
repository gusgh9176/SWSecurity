.class public final Lcom/akop/bach/PSN$Profiles;
.super Ljava/lang/Object;
.source "PSN.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profiles"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.akop.bach.psn-profile"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.akop.bach.psn-profile"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "OnlineId ASC"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field public static final LEVEL:Ljava/lang/String; = "Level"

.field public static final MEMBER_TYPE:Ljava/lang/String; = "MemberType"

.field public static final ONLINE_ID:Ljava/lang/String; = "OnlineId"

.field public static final PROGRESS:Ljava/lang/String; = "Progress"

.field public static final TROPHIES_BRONZE:Ljava/lang/String; = "BronzeTrophies"

.field public static final TROPHIES_GOLD:Ljava/lang/String; = "GoldTrophies"

.field public static final TROPHIES_PLATINUM:Ljava/lang/String; = "PlatinumTrophies"

.field public static final TROPHIES_SILVER:Ljava/lang/String; = "SilverTrophies"

.field public static final UUID:Ljava/lang/String; = "Uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "content://com.akop.bach.psnprovider/profiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

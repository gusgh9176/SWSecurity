.class public final Lcom/akop/bach/PSN$Trophies;
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
    name = "Trophies"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.akop.bach.psn-trophies"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.akop.bach.psn-trophies"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Earned DESC, SortOrder ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final EARNED:Ljava/lang/String; = "Earned"

.field public static final EARNED_TEXT:Ljava/lang/String; = "EarnedText"

.field public static final GAME_ID:Ljava/lang/String; = "GameId"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field public static final IS_SECRET:Ljava/lang/String; = "IsSecret"

.field public static final SORT_ORDER:Ljava/lang/String; = "SortOrder"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final TYPE:Ljava/lang/String; = "Type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const-string v0, "content://com.akop.bach.psnprovider/trophies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

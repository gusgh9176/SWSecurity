.class public final Lcom/akop/bach/XboxLive$SentMessages;
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
    name = "SentMessages"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final BODY:Ljava/lang/String; = "Body"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.akop.spark.sent-message"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.akop.spark.sent-message"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Sent DESC"

.field public static final PREVIEW:Ljava/lang/String; = "Preview"

.field public static final RECIPIENTS:Ljava/lang/String; = "Recipients"

.field public static final SENT:Ljava/lang/String; = "Sent"

.field public static final TYPE:Ljava/lang/String; = "MessageType"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1456
    const-string v0, "content://com.akop.bach.xboxliveprovider/sent_messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

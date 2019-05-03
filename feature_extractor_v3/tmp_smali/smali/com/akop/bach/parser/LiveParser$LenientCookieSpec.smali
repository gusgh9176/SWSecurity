.class Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;
.super Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.source "LiveParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/parser/LiveParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LenientCookieSpec"
.end annotation


# static fields
.field private static final LIVE_COOKIE_DATE_FORMAT:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, dd-MMM-yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;->LIVE_COOKIE_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>()V

    .line 97
    const-string v0, "expires"

    new-instance v1, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec$1;

    sget-object v2, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec$1;-><init>(Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 149
    return-void
.end method

.method static synthetic access$000()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;->LIVE_COOKIE_DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

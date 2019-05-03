.class Lcom/akop/bach/util/rss/RssHandler$DateUtils;
.super Ljava/lang/Object;
.source "RssHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/util/rss/RssHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateUtils"
.end annotation


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 214
    const/16 v3, 0xa

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss z"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "EEE, dd MMM yyyy HH:mm zzzz"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSzzzz"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:sszzzz"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss z"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "yyyy-MM-dd\'T\'HHmmss.SSSz"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "yyyy-MM-dd"

    aput-object v4, v2, v3

    .line 226
    .local v2, "possibleDateFormats":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Ljava/text/SimpleDateFormat;

    sput-object v3, Lcom/akop/bach/util/rss/RssHandler$DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 227
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 229
    .local v0, "gmtTZ":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 231
    sget-object v3, Lcom/akop/bach/util/rss/RssHandler$DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v5, v2, v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v3, v1

    .line 233
    sget-object v3, Lcom/akop/bach/util/rss/RssHandler$DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 14
    .param p0, "strdate"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 239
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 240
    .local v7, "result":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_3

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "sign":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x5

    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 254
    .end local v8    # "sign":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x6

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "dateEnd":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "+"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v13, :cond_3

    .line 261
    const-string v9, "GMT"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 265
    move-object v6, p0

    .line 266
    .local v6, "oldDate":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "newEnd":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x6

    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 274
    .end local v1    # "dateEnd":Ljava/lang/String;
    .end local v5    # "newEnd":Ljava/lang/String;
    .end local v6    # "oldDate":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler$DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    .local v0, "arr$":[Ljava/text/SimpleDateFormat;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 278
    .local v2, "fmt":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 286
    .end local v2    # "fmt":Ljava/text/SimpleDateFormat;
    :cond_4
    return-object v7

    .line 281
    .restart local v2    # "fmt":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v9

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

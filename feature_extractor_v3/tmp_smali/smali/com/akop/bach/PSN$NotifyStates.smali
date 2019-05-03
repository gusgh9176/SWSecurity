.class public final Lcom/akop/bach/PSN$NotifyStates;
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
    name = "NotifyStates"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.akop.spark.psn-notify-states"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.akop.spark.psn-notify-states"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "Data"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Type DESC"

.field public static final LAST_UPDATED:Ljava/lang/String; = "LastUpdated"

.field private static final NOTIFY_FRESH_MILLIS:J = 0x1b7740L

.field public static final TYPE:Ljava/lang/String; = "Type"

.field public static final TYPE_FRIENDS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 811
    const-string v0, "content://com.akop.bach.psnprovider/notify_states"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PSN$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)[J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 874
    const/4 v7, 0x0

    .line 876
    .local v7, "lastNotified":[J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v10

    const-string v3, "LastUpdated"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 882
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 886
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 889
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/PSN$NotifyStates;->stringToLongArray(Ljava/lang/String;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 894
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_1
    if-nez v7, :cond_2

    .line 899
    new-array v7, v10, [J

    .line 901
    :cond_2
    return-object v7

    .line 894
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/PsnAccount;[J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "lastNotified"    # [J

    .prologue
    .line 850
    const/4 v3, 0x1

    .line 852
    .local v3, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 853
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/akop/bach/PSN$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 858
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 860
    const-string v4, ","

    invoke-static {p2, v4}, Lcom/akop/bach/parser/Parser;->joinString([JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "data":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 863
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    const-string v4, "Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v4, "Data"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v4, "LastUpdated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    sget-object v4, Lcom/akop/bach/PSN$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 870
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static stringToLongArray(Ljava/lang/String;)[J
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 828
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "items":[Ljava/lang/String;
    array-length v4, v2

    new-array v3, v4, [J

    .line 831
    .local v3, "longArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 835
    :try_start_0
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    aput-wide v4, v3, v1

    goto :goto_1

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

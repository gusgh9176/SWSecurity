.class public final Lcom/akop/bach/XboxLive$NotifyStates;
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
    name = "NotifyStates"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.akop.spark.notify-states"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.akop.spark.notify-states"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "Data"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Type DESC"

.field public static final LAST_UPDATED:Ljava/lang/String; = "LastUpdated"

.field private static final NOTIFY_FRESH_MILLIS:J = 0x1b7740L

.field public static final TYPE:Ljava/lang/String; = "Type"

.field public static final TYPE_BEACONS:I = 0x3

.field public static final TYPE_FRIENDS:I = 0x2

.field public static final TYPE_MESSAGES:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1224
    const-string v0, "content://com.akop.bach.xboxliveprovider/notify_states"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBeaconsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Ljava/util/HashMap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/akop/bach/XboxLiveAccount;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    .prologue
    .line 1410
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1412
    .local v7, "beacons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Data"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "LastUpdated"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1421
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1425
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1429
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1430
    .local v9, "data":Ljava/lang/String;
    const-string v0, "\\|"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1432
    .local v11, "groups":[Ljava/lang/String;
    move-object v6, v11

    .local v6, "arr$":[Ljava/lang/String;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v10, v6, v12

    .line 1434
    .local v10, "group":Ljava/lang/String;
    const-string v0, "="

    const/4 v1, 0x2

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 1436
    .local v14, "pairs":[Ljava/lang/String;
    array-length v0, v14

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v14, v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1437
    const/4 v0, 0x0

    aget-object v0, v14, v0

    const/4 v1, 0x1

    aget-object v1, v14, v1

    invoke-static {v1}, Lcom/akop/bach/XboxLive$NotifyStates;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1444
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "group":Ljava/lang/String;
    .end local v11    # "groups":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "pairs":[Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1448
    :cond_2
    return-object v7

    .line 1444
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)[J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1345
    const/4 v7, 0x0

    .line 1347
    .local v7, "lastNotified":[J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v10

    const-string v3, "LastUpdated"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

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

    .line 1353
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1357
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1360
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/XboxLive$NotifyStates;->stringToLongArray(Ljava/lang/String;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1365
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1369
    :cond_1
    if-nez v7, :cond_2

    .line 1370
    new-array v7, v10, [J

    .line 1372
    :cond_2
    return-object v7

    .line 1365
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMessagesLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)[J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1377
    const/4 v7, 0x0

    .line 1379
    .local v7, "lastNotified":[J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

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

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

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

    .line 1385
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1389
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1392
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/XboxLive$NotifyStates;->stringToLongArray(Ljava/lang/String;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1397
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1401
    :cond_1
    if-nez v7, :cond_2

    .line 1402
    new-array v7, v10, [J

    .line 1404
    :cond_2
    return-object v7

    .line 1397
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setBeaconsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/util/HashMap;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/akop/bach/XboxLiveAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .prologue
    .line 1313
    .local p2, "beacons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const/4 v7, 0x3

    .line 1315
    .local v7, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1316
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AccountId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v5, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1324
    .local v4, "gameId":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    move-object v3, v8

    check-cast v3, [J

    .line 1325
    .local v3, "friendIds":[J
    if-eqz v3, :cond_0

    array-length v8, v3

    if-lez v8, :cond_0

    .line 1326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-static {v3, v9}, Lcom/akop/bach/parser/Parser;->joinString([JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1329
    .end local v3    # "friendIds":[J
    .end local v4    # "gameId":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1331
    const-string v8, "|"

    invoke-static {v5, v8}, Lcom/akop/bach/parser/Parser;->joinString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    .local v2, "data":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1334
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v8, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1335
    const-string v8, "Type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    const-string v8, "Data"

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v8, "LastUpdated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1339
    sget-object v8, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1341
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "data":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static setFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;[J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "lastNotified"    # [J

    .prologue
    .line 1263
    const/4 v3, 0x2

    .line 1265
    .local v3, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1266
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

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

    .line 1271
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 1273
    const-string v4, ","

    invoke-static {p2, v4}, Lcom/akop/bach/parser/Parser;->joinString([JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "data":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1276
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1277
    const-string v4, "Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1278
    const-string v4, "Data"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v4, "LastUpdated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1281
    sget-object v4, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1283
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setMessagesLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;[J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "lastNotified"    # [J

    .prologue
    .line 1288
    const/4 v3, 0x1

    .line 1290
    .local v3, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1291
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

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

    .line 1296
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 1298
    const-string v4, ","

    invoke-static {p2, v4}, Lcom/akop/bach/parser/Parser;->joinString([JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, "data":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1301
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1302
    const-string v4, "Type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    const-string v4, "Data"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v4, "LastUpdated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1306
    sget-object v4, Lcom/akop/bach/XboxLive$NotifyStates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1308
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static stringToLongArray(Ljava/lang/String;)[J
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1241
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "items":[Ljava/lang/String;
    array-length v4, v2

    new-array v3, v4, [J

    .line 1244
    .local v3, "longArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1248
    :try_start_0
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    aput-wide v4, v3, v1

    goto :goto_1

    .line 1257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

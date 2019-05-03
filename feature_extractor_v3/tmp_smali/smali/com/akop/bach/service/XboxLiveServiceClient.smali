.class public Lcom/akop/bach/service/XboxLiveServiceClient;
.super Lcom/akop/bach/service/ServiceClient;
.source "XboxLiveServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;
    }
.end annotation


# static fields
.field private static final MAX_BEACONS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/akop/bach/service/ServiceClient;-><init>()V

    .line 58
    return-void
.end method

.method private areArraysEquivalent([J[J)Z
    .locals 6
    .param p1, "arrayOne"    # [J
    .param p2, "arrayTwo"    # [J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 75
    :cond_0
    if-ne p1, p2, :cond_2

    :goto_0
    move v3, v2

    .line 85
    :cond_1
    :goto_1
    return v3

    :cond_2
    move v2, v3

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_1

    .line 80
    invoke-static {p2}, Ljava/util/Arrays;->sort([J)V

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 82
    aget-wide v4, p1, v0

    invoke-static {p2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    if-ltz v4, :cond_1

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v3, v2

    .line 85
    goto :goto_1
.end method

.method public static clearBeaconNotifications(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 578
    const/high16 v4, 0x40000

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xfff

    shl-int/lit8 v5, v5, 0x4

    or-int v2, v4, v5

    .line 579
    .local v2, "notificationId":I
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 581
    .local v1, "mgr":Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "notificationId":I
    .local v3, "notificationId":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 582
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "notificationId":I
    .restart local v2    # "notificationId":I
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 581
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "notificationId":I
    .restart local v3    # "notificationId":I
    goto :goto_0

    .line 583
    :cond_0
    return-void
.end method

.method public static clearFriendNotifications(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 570
    const/high16 v2, 0x2000000

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    long-to-int v3, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v1, v2, v3

    .line 571
    .local v1, "notificationId":I
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 572
    .local v0, "mgr":Landroid/app/NotificationManager;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 573
    return-void
.end method

.method public static clearMessageNotifications(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 562
    const/high16 v2, 0x1000000

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v4

    long-to-int v3, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v1, v2, v3

    .line 563
    .local v1, "notificationId":I
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 564
    .local v0, "mgr":Landroid/app/NotificationManager;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 565
    return-void
.end method

.method private notifyBeacons(Lcom/akop/bach/XboxLiveAccount;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 31
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/XboxLiveAccount;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "matching":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    .local p3, "lastMatching":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 275
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v21

    .line 277
    .local v21, "mgr":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 279
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_1

    .line 281
    const-string v27, "Last matching:"

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 285
    .local v17, "key":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "* BEACONS "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 286
    .local v24, "s":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .local v4, "arr$":[J
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    aget-wide v8, v4, v14

    .line 287
    .local v8, "friendId":J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 286
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 289
    .end local v8    # "friendId":J
    :cond_0
    invoke-static/range {v24 .. v24}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v4    # "arr$":[J
    .end local v14    # "i$":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len$":I
    .end local v24    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_3

    .line 295
    const-string v27, "Now matching:"

    invoke-static/range {v27 .. v27}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 299
    .restart local v17    # "key":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "* BEACONS "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 300
    .restart local v24    # "s":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .restart local v4    # "arr$":[J
    array-length v0, v4

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    aget-wide v8, v4, v14

    .line 301
    .restart local v8    # "friendId":J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 300
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 303
    .end local v8    # "friendId":J
    :cond_2
    invoke-static/range {v24 .. v24}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_2

    .line 308
    .end local v4    # "arr$":[J
    .end local v14    # "i$":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len$":I
    .end local v24    # "s":Ljava/lang/String;
    :cond_3
    const/high16 v27, 0x40000

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xfff

    move/from16 v28, v0

    shl-int/lit8 v28, v28, 0x4

    or-int v23, v27, v28

    .line 309
    .local v23, "notificationId":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v11, v0, [Ljava/lang/String;

    .line 311
    .local v11, "gameUids":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 313
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ge v12, v0, :cond_a

    .line 315
    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_9

    .line 317
    aget-object v10, v11, v12

    .line 318
    .local v10, "gameUid":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [J

    .line 320
    .local v19, "matchingFriends":[J
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [J

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/akop/bach/service/XboxLiveServiceClient;->areArraysEquivalent([J[J)Z

    move-result v27

    if-nez v27, :cond_6

    .line 323
    :cond_4
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_8

    .line 325
    move-object/from16 v0, p1

    invoke-static {v6, v0, v10}, Lcom/akop/bach/XboxLive$Games;->getTitle(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 327
    .local v26, "title":Ljava/lang/String;
    const/16 v20, 0x0

    .line 328
    .local v20, "message":Ljava/lang/String;
    const/16 v25, 0x0

    .line 330
    .local v25, "ticker":Ljava/lang/String;
    const/4 v15, 0x0

    .line 331
    .local v15, "iconOverlayNumber":I
    const/16 v16, 0x0

    .line 333
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    .line 335
    move-object/from16 v0, v19

    array-length v15, v0

    .line 336
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    const-class v27, Lcom/akop/bach/activity/xboxlive/FriendList;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v27, "account"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    const v27, 0x7f08008d

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object v26, v28, v29

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 340
    const v27, 0x7f08008c

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getDescription()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 356
    :goto_5
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .local v5, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    const v28, 0x7f020079

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    const/16 v28, -0x1

    const/16 v29, 0xbb8

    const/16 v30, 0x2710

    invoke-virtual/range {v27 .. v30}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getRingtoneUri()Landroid/net/Uri;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->isVibrationEnabled()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 372
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 374
    :cond_5
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v22

    .line 375
    .local v22, "notification":Landroid/app/Notification;
    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 388
    .end local v5    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v10    # "gameUid":Ljava/lang/String;
    .end local v15    # "iconOverlayNumber":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "matchingFriends":[J
    .end local v20    # "message":Ljava/lang/String;
    .end local v22    # "notification":Landroid/app/Notification;
    .end local v25    # "ticker":Ljava/lang/String;
    .end local v26    # "title":Ljava/lang/String;
    :cond_6
    :goto_6
    add-int/lit8 v23, v23, 0x1

    .line 313
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 346
    .restart local v10    # "gameUid":Ljava/lang/String;
    .restart local v15    # "iconOverlayNumber":I
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "matchingFriends":[J
    .restart local v20    # "message":Ljava/lang/String;
    .restart local v25    # "ticker":Ljava/lang/String;
    .restart local v26    # "title":Ljava/lang/String;
    :cond_7
    const/16 v27, 0x0

    aget-wide v28, v19, v27

    move-wide/from16 v0, v28

    invoke-static {v6, v0, v1}, Lcom/akop/bach/XboxLive$Friends;->getGamertag(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "friendScreenName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/akop/bach/XboxLiveAccount;->getFriendIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    .line 349
    const v27, 0x7f080085

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v7, v28, v29

    const/16 v29, 0x1

    aput-object v26, v28, v29

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 351
    const v27, 0x7f080084

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v7, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getDescription()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    .line 379
    .end local v7    # "friendScreenName":Ljava/lang/String;
    .end local v15    # "iconOverlayNumber":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v20    # "message":Ljava/lang/String;
    .end local v25    # "ticker":Ljava/lang/String;
    .end local v26    # "title":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_6

    .line 385
    .end local v10    # "gameUid":Ljava/lang/String;
    .end local v19    # "matchingFriends":[J
    :cond_9
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_6

    .line 390
    :cond_a
    return-void
.end method

.method private notifyFriends(Lcom/akop/bach/XboxLiveAccount;[JLjava/util/List;)V
    .locals 24
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "friendsOnline"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/XboxLiveAccount;",
            "[J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "lastFriendsOnline":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v10

    .line 182
    .local v10, "mgr":Landroid/app/NotificationManager;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 184
    .local v6, "context":Landroid/content/Context;
    const/high16 v19, 0x2000000

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    or-int v13, v19, v20

    .line 186
    .local v13, "notificationId":I
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 188
    const-string v15, ""

    .line 189
    .local v15, "s":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 190
    .local v18, "unr":Ljava/lang/Object;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 192
    .end local v18    # "unr":Ljava/lang/Object;
    :cond_0
    const-string v19, "Currently online (%d): %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const-string v15, ""

    .line 195
    move-object/from16 v4, p2

    .local v4, "arr$":[J
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_1

    aget-wide v20, v4, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 196
    .local v18, "unr":Ljava/lang/Long;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 198
    .end local v18    # "unr":Ljava/lang/Long;
    :cond_1
    const-string v19, "New online (%d): %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .end local v4    # "arr$":[J
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_a

    .line 203
    const/4 v11, 0x0

    .line 204
    .local v11, "newOnlineCount":I
    move-object/from16 v4, p2

    .restart local v4    # "arr$":[J
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v9, :cond_4

    aget-wide v20, v4, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 205
    .local v14, "online":Ljava/lang/Long;
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 206
    add-int/lit8 v11, v11, 0x1

    .line 204
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 208
    .end local v14    # "online":Ljava/lang/Long;
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 209
    const-string v19, "%d computed new; %d online now; %d online before"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_5
    if-lez v11, :cond_8

    .line 219
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 221
    const v19, 0x7f080083

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 222
    .local v17, "tickerTitle":Ljava/lang/String;
    const v19, 0x7f0800e3

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-wide v22, p2, v22

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lcom/akop/bach/XboxLive$Friends;->getGamertag(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getDescription()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 234
    .local v16, "tickerText":Ljava/lang/String;
    :goto_3
    new-instance v12, Landroid/app/Notification;

    const v19, 0x7f02007a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v19

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 236
    .local v12, "notification":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 238
    new-instance v8, Landroid/content/Intent;

    const-class v19, Lcom/akop/bach/activity/xboxlive/FriendList;

    move-object/from16 v0, v19

    invoke-direct {v8, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v8, "intent":Landroid/content/Intent;
    const-string v19, "account"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 244
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v12, v6, v0, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 249
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 250
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->number:I

    .line 252
    :cond_6
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 253
    const/16 v19, 0xbb8

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledOnMS:I

    .line 254
    const/16 v19, 0x2710

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledOffMS:I

    .line 255
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledARGB:I

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getRingtoneUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->isVibrationEnabled()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 259
    iget v0, v12, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->defaults:I

    .line 261
    :cond_7
    invoke-virtual {v10, v13, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 268
    .end local v4    # "arr$":[J
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "i$":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "len$":I
    .end local v11    # "newOnlineCount":I
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v16    # "tickerText":Ljava/lang/String;
    .end local v17    # "tickerTitle":Ljava/lang/String;
    :cond_8
    :goto_4
    return-void

    .line 228
    .restart local v4    # "arr$":[J
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "newOnlineCount":I
    :cond_9
    const v19, 0x7f08008a

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 229
    .restart local v17    # "tickerTitle":Ljava/lang/String;
    const v19, 0x7f0800e4

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getScreenName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getDescription()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "tickerText":Ljava/lang/String;
    goto/16 :goto_3

    .line 266
    .end local v4    # "arr$":[J
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "newOnlineCount":I
    .end local v16    # "tickerText":Ljava/lang/String;
    .end local v17    # "tickerTitle":Ljava/lang/String;
    :cond_a
    invoke-virtual {v10, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4
.end method

.method private notifyMessages(Lcom/akop/bach/XboxLiveAccount;[JLjava/util/List;)V
    .locals 24
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "unreadMessages"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/XboxLiveAccount;",
            "[J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, "lastUnreadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v10

    .line 92
    .local v10, "mgr":Landroid/app/NotificationManager;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 94
    .local v6, "context":Landroid/content/Context;
    const/high16 v19, 0x1000000

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    or-int v12, v19, v20

    .line 96
    .local v12, "notificationId":I
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 98
    const-string v13, ""

    .line 99
    .local v13, "s":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 100
    .local v16, "unr":Ljava/lang/Object;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 102
    .end local v16    # "unr":Ljava/lang/Object;
    :cond_0
    const-string v19, "Currently unread (%d): %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const-string v13, ""

    .line 105
    move-object/from16 v4, p2

    .local v4, "arr$":[J
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_1

    aget-wide v20, v4, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 106
    .local v16, "unr":Ljava/lang/Long;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 108
    .end local v16    # "unr":Ljava/lang/Long;
    :cond_1
    const-string v19, "New unread (%d): %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .end local v4    # "arr$":[J
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v13    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_a

    .line 113
    const/16 v18, 0x0

    .line 114
    .local v18, "unreadCount":I
    move-object/from16 v4, p2

    .restart local v4    # "arr$":[J
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v9, :cond_4

    aget-wide v20, v4, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 116
    .local v17, "unread":Ljava/lang/Long;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 117
    add-int/lit8 v18, v18, 0x1

    .line 114
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 120
    .end local v17    # "unread":Ljava/lang/Long;
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 121
    const-string v19, "%d computed new"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_5
    if-lez v18, :cond_8

    .line 128
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 130
    const v19, 0x7f0800cf

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 131
    .local v15, "tickerTitle":Ljava/lang/String;
    const v19, 0x7f0800e5

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getScreenName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x0

    aget-wide v22, p2, v22

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lcom/akop/bach/XboxLive$Messages;->getSender(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "tickerText":Ljava/lang/String;
    :goto_3
    new-instance v11, Landroid/app/Notification;

    const v19, 0x7f02007b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v11, v0, v14, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 146
    .local v11, "notification":Landroid/app/Notification;
    new-instance v8, Landroid/content/Intent;

    const-class v19, Lcom/akop/bach/activity/xboxlive/MessageList;

    move-object/from16 v0, v19

    invoke-direct {v8, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v8, "intent":Landroid/content/Intent;
    const-string v19, "account"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 152
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x11

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 155
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 156
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->number:I

    .line 158
    :cond_6
    const/16 v19, 0xbb8

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->ledOnMS:I

    .line 159
    const/16 v19, 0x2710

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->ledOffMS:I

    .line 160
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->ledARGB:I

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getRingtoneUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->isVibrationEnabled()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 164
    iget v0, v11, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->defaults:I

    .line 166
    :cond_7
    invoke-virtual {v11, v6, v15, v14, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 169
    invoke-virtual {v10, v12, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 176
    .end local v4    # "arr$":[J
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "i$":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "len$":I
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v14    # "tickerText":Ljava/lang/String;
    .end local v15    # "tickerTitle":Ljava/lang/String;
    .end local v18    # "unreadCount":I
    :cond_8
    :goto_4
    return-void

    .line 137
    .restart local v4    # "arr$":[J
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v18    # "unreadCount":I
    :cond_9
    const v19, 0x7f0800d0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 138
    .restart local v15    # "tickerTitle":Ljava/lang/String;
    const v19, 0x7f0800e6

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getScreenName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/XboxLiveAccount;->getDescription()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "tickerText":Ljava/lang/String;
    goto/16 :goto_3

    .line 174
    .end local v4    # "arr$":[J
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v14    # "tickerText":Ljava/lang/String;
    .end local v15    # "tickerTitle":Ljava/lang/String;
    .end local v18    # "unreadCount":I
    :cond_a
    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4
.end method


# virtual methods
.method protected notify(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/service/NotificationService$AccountSchedule;)V
    .locals 17
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "schedule"    # Lcom/akop/bach/service/NotificationService$AccountSchedule;

    .prologue
    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v14, p1

    .line 415
    check-cast v14, Lcom/akop/bach/XboxLiveAccount;

    .line 416
    .local v14, "xblAccount":Lcom/akop/bach/XboxLiveAccount;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/akop/bach/service/NotificationService$AccountSchedule;->param:Ljava/lang/Object;

    check-cast v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;

    .line 418
    .local v11, "status":Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;
    const/4 v10, 0x0

    .line 419
    .local v10, "newUnreadMessages":[J
    const/4 v9, 0x0

    .line 425
    .local v9, "newFriendsOnline":[J
    :try_start_0
    invoke-static {v3, v14}, Lcom/akop/bach/XboxLive$Messages;->getUnreadMessageIds(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)[J

    move-result-object v10

    .line 428
    invoke-virtual {v14}, Lcom/akop/bach/XboxLiveAccount;->isMessageNotificationEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 430
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->unreadMessages:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v15}, Lcom/akop/bach/service/XboxLiveServiceClient;->notifyMessages(Lcom/akop/bach/XboxLiveAccount;[JLjava/util/List;)V

    .line 433
    invoke-static {v3, v14, v10}, Lcom/akop/bach/XboxLive$NotifyStates;->setMessagesLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;[J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v3, v14}, Lcom/akop/bach/XboxLive$Friends;->getOnlineFriendIds(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)[J

    move-result-object v9

    .line 453
    invoke-virtual {v14}, Lcom/akop/bach/XboxLiveAccount;->getFriendNotifications()I

    move-result v15

    if-eqz v15, :cond_1

    .line 455
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->friendsOnline:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v15}, Lcom/akop/bach/service/XboxLiveServiceClient;->notifyFriends(Lcom/akop/bach/XboxLiveAccount;[JLjava/util/List;)V

    .line 458
    invoke-static {v3, v14, v9}, Lcom/akop/bach/XboxLive$NotifyStates;->setFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;[J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 477
    .local v8, "matching":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    :try_start_2
    invoke-virtual {v14}, Lcom/akop/bach/XboxLiveAccount;->getBeaconNotifications()I

    move-result v15

    invoke-static {v3, v14, v15}, Lcom/akop/bach/XboxLive$Friends;->getOnlineFriendsMatchingMyBeacons(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;I)Ljava/util/HashMap;

    move-result-object v8

    .line 480
    invoke-virtual {v14}, Lcom/akop/bach/XboxLiveAccount;->isBeaconNotificationEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 482
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->beacons:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v15}, Lcom/akop/bach/service/XboxLiveServiceClient;->notifyBeacons(Lcom/akop/bach/XboxLiveAccount;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 484
    invoke-static {v3, v14, v8}, Lcom/akop/bach/XboxLive$NotifyStates;->setBeaconsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 497
    :cond_2
    :goto_2
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->unreadMessages:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 498
    if-eqz v10, :cond_3

    .line 499
    move-object v2, v10

    .local v2, "arr$":[J
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_3

    aget-wide v12, v2, v6

    .line 500
    .local v12, "o":J
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->unreadMessages:Ljava/util/List;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 437
    .end local v2    # "arr$":[J
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "matching":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    .end local v12    # "o":J
    :catch_0
    move-exception v4

    .line 439
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 441
    const-string v15, "Suppressed exception"

    invoke-static {v15}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 464
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 466
    const-string v15, "Suppressed exception"

    invoke-static {v15}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "matching":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    :catch_2
    move-exception v4

    .line 490
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 492
    const-string v15, "Suppressed exception"

    invoke-static {v15}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 502
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->friendsOnline:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 503
    if-eqz v9, :cond_4

    .line 504
    move-object v2, v9

    .restart local v2    # "arr$":[J
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v7, :cond_4

    aget-wide v12, v2, v6

    .line 505
    .restart local v12    # "o":J
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->friendsOnline:Ljava/util/List;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 507
    .end local v2    # "arr$":[J
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "o":J
    :cond_4
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->beacons:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 508
    if-eqz v8, :cond_5

    .line 509
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 510
    .local v5, "gameUid":Ljava/lang/String;
    iget-object v15, v11, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->beacons:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 511
    .end local v5    # "gameUid":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public setupParameters(Lcom/akop/bach/BasicAccount;)Ljava/lang/Object;
    .locals 16
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v11, p1

    .line 517
    check-cast v11, Lcom/akop/bach/XboxLiveAccount;

    .line 518
    .local v11, "xblAccount":Lcom/akop/bach/XboxLiveAccount;
    new-instance v10, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;

    invoke-direct {v10}, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;-><init>()V

    .line 520
    .local v10, "status":Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 521
    const-string v12, "Creating a new account schedule for %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    :cond_0
    invoke-virtual {v11}, Lcom/akop/bach/XboxLiveAccount;->isMessageNotificationEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 527
    invoke-static {v1, v11}, Lcom/akop/bach/XboxLive$NotifyStates;->getMessagesLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)[J

    move-result-object v5

    .line 530
    .local v5, "lastNotified":[J
    move-object v0, v5

    .local v0, "arr$":[J
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_1

    aget-wide v6, v0, v4

    .line 531
    .local v6, "id":J
    iget-object v12, v10, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->unreadMessages:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "arr$":[J
    .end local v4    # "i$":I
    .end local v5    # "lastNotified":[J
    .end local v6    # "id":J
    .end local v8    # "len$":I
    :cond_1
    invoke-virtual {v11}, Lcom/akop/bach/XboxLiveAccount;->getFriendNotifications()I

    move-result v12

    if-eqz v12, :cond_2

    .line 537
    invoke-static {v1, v11}, Lcom/akop/bach/XboxLive$NotifyStates;->getFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)[J

    move-result-object v5

    .line 540
    .restart local v5    # "lastNotified":[J
    move-object v0, v5

    .restart local v0    # "arr$":[J
    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v8, :cond_2

    aget-wide v6, v0, v4

    .line 541
    .restart local v6    # "id":J
    iget-object v12, v10, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->friendsOnline:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "arr$":[J
    .end local v4    # "i$":I
    .end local v5    # "lastNotified":[J
    .end local v6    # "id":J
    .end local v8    # "len$":I
    :cond_2
    invoke-virtual {v11}, Lcom/akop/bach/XboxLiveAccount;->isBeaconNotificationEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 546
    invoke-static {v1, v11}, Lcom/akop/bach/XboxLive$NotifyStates;->getBeaconsLastNotified(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Ljava/util/HashMap;

    move-result-object v9

    .line 549
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 551
    .local v3, "gameId":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [J

    move-object v2, v12

    check-cast v2, [J

    .line 552
    .local v2, "friendIds":[J
    iget-object v12, v10, Lcom/akop/bach/service/XboxLiveServiceClient$XboxLiveStatus;->beacons:Ljava/util/HashMap;

    invoke-virtual {v12, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 556
    .end local v2    # "friendIds":[J
    .end local v3    # "gameId":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    :cond_3
    return-object v10
.end method

.method protected synchronize(Lcom/akop/bach/BasicAccount;)V
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/akop/bach/service/XboxLiveServiceClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v1, v0}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .local v1, "p":Lcom/akop/bach/parser/XboxLiveParser;
    move-object v2, p1

    .line 398
    check-cast v2, Lcom/akop/bach/XboxLiveAccount;

    .line 402
    .local v2, "xblAccount":Lcom/akop/bach/XboxLiveAccount;
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchMessages(Lcom/akop/bach/XboxLiveAccount;)V

    .line 403
    invoke-virtual {v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriends(Lcom/akop/bach/XboxLiveAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v3
.end method

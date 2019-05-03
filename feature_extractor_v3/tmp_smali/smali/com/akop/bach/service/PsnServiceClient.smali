.class public Lcom/akop/bach/service/PsnServiceClient;
.super Lcom/akop/bach/service/ServiceClient;
.source "PsnServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/service/PsnServiceClient$PsnStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/akop/bach/service/ServiceClient;-><init>()V

    .line 51
    return-void
.end method

.method public static clearFriendNotifications(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 238
    const/high16 v2, 0x8000000

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    long-to-int v3, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v1, v2, v3

    .line 239
    .local v1, "notificationId":I
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 240
    .local v0, "mgr":Landroid/app/NotificationManager;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 241
    return-void
.end method

.method private notifyFriends(Lcom/akop/bach/PsnAccount;[JLjava/util/List;)V
    .locals 24
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendsOnline"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/PsnAccount;",
            "[J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "lastFriendsOnline":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/PsnServiceClient;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v10

    .line 65
    .local v10, "mgr":Landroid/app/NotificationManager;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/service/PsnServiceClient;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 67
    .local v6, "context":Landroid/content/Context;
    const/high16 v19, 0x8000000

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    or-int v13, v19, v20

    .line 69
    .local v13, "notificationId":I
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 71
    const-string v15, ""

    .line 72
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

    .line 73
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

    .line 75
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

    .line 77
    const-string v15, ""

    .line 78
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

    .line 79
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

    .line 78
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
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

    .line 84
    .end local v4    # "arr$":[J
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_a

    .line 86
    const/4 v11, 0x0

    .line 87
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

    .line 88
    .local v14, "online":Ljava/lang/Long;
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 89
    add-int/lit8 v11, v11, 0x1

    .line 87
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    .end local v14    # "online":Ljava/lang/Long;
    :cond_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 92
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

    .line 96
    :cond_5
    if-lez v11, :cond_8

    .line 102
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 104
    const v19, 0x7f080083

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 105
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

    invoke-static {v6, v0, v1}, Lcom/akop/bach/PSN$Friends;->getOnlineId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getDescription()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, "tickerText":Ljava/lang/String;
    :goto_3
    new-instance v12, Landroid/app/Notification;

    const v19, 0x7f020039

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v19

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 119
    .local v12, "notification":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 121
    new-instance v8, Landroid/content/Intent;

    const-class v19, Lcom/akop/bach/activity/playstation/FriendList;

    move-object/from16 v0, v19

    invoke-direct {v8, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v8, "intent":Landroid/content/Intent;
    const-string v19, "account"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 127
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v12, v6, v0, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 132
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 133
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->number:I

    .line 135
    :cond_6
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 136
    const/16 v19, 0xbb8

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledOnMS:I

    .line 137
    const/16 v19, 0x2710

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledOffMS:I

    .line 138
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledARGB:I

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getRingtoneUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->isVibrationEnabled()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 142
    iget v0, v12, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->defaults:I

    .line 144
    :cond_7
    invoke-virtual {v10, v13, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 151
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

    .line 111
    .restart local v4    # "arr$":[J
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "newOnlineCount":I
    :cond_9
    const v19, 0x7f08008a

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 112
    .restart local v17    # "tickerTitle":Ljava/lang/String;
    const v19, 0x7f0800e4

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

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

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getDescription()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "tickerText":Ljava/lang/String;
    goto/16 :goto_3

    .line 149
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


# virtual methods
.method protected notify(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/service/NotificationService$AccountSchedule;)V
    .locals 12
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "schedule"    # Lcom/akop/bach/service/NotificationService$AccountSchedule;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/akop/bach/service/PsnServiceClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v8, p1

    .line 199
    check-cast v8, Lcom/akop/bach/PsnAccount;

    .line 200
    .local v8, "psnAccount":Lcom/akop/bach/PsnAccount;
    iget-object v9, p2, Lcom/akop/bach/service/NotificationService$AccountSchedule;->param:Ljava/lang/Object;

    check-cast v9, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;

    .line 202
    .local v9, "status":Lcom/akop/bach/service/PsnServiceClient$PsnStatus;
    const/4 v5, 0x0

    .line 208
    .local v5, "newFriendsOnline":[J
    :try_start_0
    invoke-static {v1, v8}, Lcom/akop/bach/PSN$Friends;->getOnlineFriendIds(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)[J

    move-result-object v5

    .line 211
    invoke-virtual {v8}, Lcom/akop/bach/PsnAccount;->getFriendNotifications()I

    move-result v10

    if-eqz v10, :cond_0

    .line 213
    iget-object v10, v9, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;->friendsOnline:Ljava/util/List;

    invoke-direct {p0, v8, v5, v10}, Lcom/akop/bach/service/PsnServiceClient;->notifyFriends(Lcom/akop/bach/PsnAccount;[JLjava/util/List;)V

    .line 216
    invoke-static {v1, v8, v5}, Lcom/akop/bach/PSN$NotifyStates;->setFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/PsnAccount;[J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    iget-object v10, v9, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;->friendsOnline:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 230
    if-eqz v5, :cond_1

    .line 231
    move-object v0, v5

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-wide v6, v0, v3

    .line 232
    .local v6, "o":J
    iget-object v10, v9, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;->friendsOnline:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "arr$":[J
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "o":J
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 224
    const-string v10, "Suppressed exception"

    invoke-static {v10}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public setupParameters(Lcom/akop/bach/BasicAccount;)Ljava/lang/Object;
    .locals 13
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/akop/bach/service/PsnServiceClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v7, p1

    .line 157
    check-cast v7, Lcom/akop/bach/PsnAccount;

    .line 158
    .local v7, "psnAccount":Lcom/akop/bach/PsnAccount;
    new-instance v8, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;

    invoke-direct {v8}, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;-><init>()V

    .line 160
    .local v8, "status":Lcom/akop/bach/service/PsnServiceClient$PsnStatus;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 161
    const-string v9, "Creating a new account schedule for %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    invoke-virtual {v7}, Lcom/akop/bach/PsnAccount;->getFriendNotifications()I

    move-result v9

    if-eqz v9, :cond_1

    .line 167
    invoke-static {v1, v7}, Lcom/akop/bach/PSN$NotifyStates;->getFriendsLastNotified(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)[J

    move-result-object v3

    .line 170
    .local v3, "lastNotified":[J
    move-object v0, v3

    .local v0, "arr$":[J
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_1

    aget-wide v4, v0, v2

    .line 171
    .local v4, "id":J
    iget-object v9, v8, Lcom/akop/bach/service/PsnServiceClient$PsnStatus;->friendsOnline:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "lastNotified":[J
    .end local v4    # "id":J
    .end local v6    # "len$":I
    :cond_1
    return-object v8
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
    .line 181
    invoke-virtual {p0}, Lcom/akop/bach/service/PsnServiceClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    move-object v2, p1

    .line 182
    check-cast v2, Lcom/akop/bach/PsnAccount;

    .line 183
    .local v2, "psnAccount":Lcom/akop/bach/PsnAccount;
    new-instance v1, Lcom/akop/bach/parser/PsnEuParser;

    invoke-direct {v1, v0}, Lcom/akop/bach/parser/PsnEuParser;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/akop/bach/parser/PsnParser;->fetchFriends(Lcom/akop/bach/PsnAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v1}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v3
.end method

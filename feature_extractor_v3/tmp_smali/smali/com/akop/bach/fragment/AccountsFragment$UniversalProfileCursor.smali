.class public final Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "AccountsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/AccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniversalProfileCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;,
        Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfoComparator;
    }
.end annotation


# static fields
.field public static final ACCOUNT_URI:Ljava/lang/String; = "Uri"

.field public static final AVATAR_URL:Ljava/lang/String; = "AvatarUrl"

.field public static final COLUMN_AVATAR_URL:I = 0x4

.field public static final COLUMN_DESCRIPTION:I = 0x3

.field public static final COLUMN_ICON_URL:I = 0x6

.field public static final COLUMN_SCREEN_NAME:I = 0x2

.field public static final COLUMN_URI:I = 0x5

.field public static final COLUMN_UUID:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field private static final KEYS:[Ljava/lang/String;

.field public static final SCREEN_NAME:Ljava/lang/String; = "ScreenName"

.field public static final UUID:Ljava/lang/String; = "Uid"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final serialVersionUID:J = -0x29402e7713df078cL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    const-string v0, "content://com.akop.bach.profileprovider/uni_profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ScreenName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AvatarUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    sget-object v0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->listAccounts(Landroid/content/Context;)[Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;

    move-result-object v7

    .local v7, "arr$":[Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
    array-length v10, v7

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v9, v7, v8

    .line 152
    .local v9, "info":Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
    iget-object v1, v9, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->uuid:Ljava/lang/String;

    iget-object v2, v9, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->screenName:Ljava/lang/String;

    iget-object v3, v9, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->description:Ljava/lang/String;

    iget-object v4, v9, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->iconUrl:Ljava/lang/String;

    iget-object v5, v9, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->uri:Landroid/net/Uri;

    iget-object v6, v9, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;->iconUrl:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 154
    .end local v9    # "info":Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
    :cond_0
    return-void
.end method

.method private listAccounts(Landroid/content/Context;)[Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;>;"
    const/4 v7, 0x0

    .line 163
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "AccountId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "OnlineId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "IconUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 176
    :goto_0
    if-eqz v7, :cond_1

    .line 180
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800fb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    const/4 v7, 0x0

    .line 200
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "AccountId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Gamertag"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "IconUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 213
    :goto_2
    if-eqz v7, :cond_3

    .line 217
    :goto_3
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    new-instance v0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08016f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 229
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;

    .line 234
    .local v8, "infos":[Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfoComparator;

    invoke-direct {v0, v12}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfoComparator;-><init>(Lcom/akop/bach/fragment/AccountsFragment$1;)V

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 237
    return-object v8

    .line 209
    .end local v8    # "infos":[Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor$AccountInfo;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 172
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "avatarUrl"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/fragment/AccountsFragment$UniversalProfileCursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    .line 251
    return-void
.end method

.class public Lcom/akop/bach/XboxLive$RecentPlayersCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "XboxLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentPlayersCursor"
.end annotation


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final COLUMN_ACTIVITY:I = 0x2

.field public static final COLUMN_GAMERSCORE:I = 0x6

.field public static final COLUMN_GAMERTAG:I = 0x1

.field public static final COLUMN_ICON_URL:I = 0x3

.field public static final COLUMN_IS_FRIEND:I = 0x7

.field public static final COLUMN_TITLE_ICON_URL:I = 0x4

.field public static final COLUMN_TITLE_ID:I = 0x5

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GAMERSCORE:Ljava/lang/String; = "GamerScore"

.field public static final GAMERTAG:Ljava/lang/String; = "Gamertag"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field public static final IS_FRIEND:Ljava/lang/String; = "IsFriend"

.field protected static final KEYS:[Ljava/lang/String;

.field public static final TITLE_ICON_URL:Ljava/lang/String; = "TitleIconUrl"

.field public static final TITLE_ID:Ljava/lang/String; = "TitleId"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final serialVersionUID:J = 0x7dcb69ad1dd6c651L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1478
    const-string v0, "content://com.akop.bach.xboxliveprovider/recent_players"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->CONTENT_URI:Landroid/net/Uri;

    .line 1498
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Gamertag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Activity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TitleIconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TitleId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GamerScore"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IsFriend"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1512
    sget-object v0, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;-><init>([Ljava/lang/String;I)V

    .line 1514
    sget-object v0, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1515
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 1520
    sget-object v0, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1521
    return-void
.end method


# virtual methods
.method public addItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "gamertag"    # Ljava/lang/String;
    .param p4, "activity"    # Ljava/lang/String;
    .param p5, "iconUrl"    # Ljava/lang/String;
    .param p6, "titleIconUrl"    # Ljava/lang/String;
    .param p7, "titleId"    # Ljava/lang/String;
    .param p8, "gamerscore"    # I
    .param p9, "isFriend"    # Z

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v1

    if-eqz p9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    .line 1544
    return-void

    .line 1535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 11
    .param p1, "gamertag"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "titleIconUrl"    # Ljava/lang/String;
    .param p5, "titleId"    # Ljava/lang/String;
    .param p6, "gamerscore"    # I
    .param p7, "isFriend"    # Z

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->getCount()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;->addItem(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1529
    return-void
.end method

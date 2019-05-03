.class public final Lcom/akop/bach/XboxLive$ComparedAchievementCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "XboxLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparedAchievementCursor"
.end annotation


# static fields
.field public static final COLUMN_DESCRIPTION:I = 0x3

.field public static final COLUMN_ICON_URL:I = 0x9

.field public static final COLUMN_MY_ACQUIRED:I = 0x5

.field public static final COLUMN_MY_IS_LOCKED:I = 0x6

.field public static final COLUMN_SCORE:I = 0x4

.field public static final COLUMN_TITLE:I = 0x2

.field public static final COLUMN_UID:I = 0x1

.field public static final COLUMN_YOUR_ACQUIRED:I = 0x7

.field public static final COLUMN_YOUR_IS_LOCKED:I = 0x8

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field private static final KEYS:[Ljava/lang/String;

.field public static final MY_ACQUIRED:Ljava/lang/String; = "MyAcquired"

.field public static final MY_IS_LOCKED:Ljava/lang/String; = "MyIsLocked"

.field public static final SCORE:Ljava/lang/String; = "Score"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final UID:Ljava/lang/String; = "Uid"

.field public static final YOUR_ACQUIRED:Ljava/lang/String; = "YourAcquired"

.field public static final YOUR_IS_LOCKED:Ljava/lang/String; = "YourIsLocked"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final serialVersionUID:J = -0x607a8d9a980e91beL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1659
    const-string v0, "content://com.akop.bach.xboxliveprovider/compared_achievements"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->CONTENT_URI:Landroid/net/Uri;

    .line 1683
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Score"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MyAcquired"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MyIsLocked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "YourAcquired"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "YourIsLocked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1699
    sget-object v0, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1701
    sget-object v0, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1702
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIJILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "score"    # I
    .param p5, "myAcquired"    # J
    .param p7, "myIsLocked"    # I
    .param p8, "yourAcquired"    # J
    .param p10, "yourIsLocked"    # I
    .param p11, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/XboxLive$ComparedAchievementCursor;->getCount()I

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

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    .line 1721
    return-void
.end method

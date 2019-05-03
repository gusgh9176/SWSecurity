.class public final Lcom/akop/bach/XboxLive$ComparedGameCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "XboxLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparedGameCursor"
.end annotation


# static fields
.field public static final ACH_TOTAL:Ljava/lang/String; = "AchTotal"

.field public static final BOXART_URL:Ljava/lang/String; = "GameIconUrl"

.field public static final COLUMN_ACH_TOTAL:I = 0x5

.field public static final COLUMN_BOXART_URL:I = 0x9

.field public static final COLUMN_GAME_URL:I = 0xa

.field public static final COLUMN_GP_TOTAL:I = 0x8

.field public static final COLUMN_MY_ACH_UNLOCKED:I = 0x3

.field public static final COLUMN_MY_GP_EARNED:I = 0x6

.field public static final COLUMN_TITLE:I = 0x2

.field public static final COLUMN_UID:I = 0x1

.field public static final COLUMN_YOUR_ACH_UNLOCKED:I = 0x4

.field public static final COLUMN_YOUR_GP_EARNED:I = 0x7

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GAME_URL:Ljava/lang/String; = "GameUrl"

.field public static final GP_TOTAL:Ljava/lang/String; = "GpTotal"

.field private static final KEYS:[Ljava/lang/String;

.field public static final MY_ACH_UNLOCKED:Ljava/lang/String; = "MyAchUnlocked"

.field public static final MY_GP_EARNED:Ljava/lang/String; = "MyGpEarned"

.field public static final TITLE:Ljava/lang/String; = "GameTitle"

.field public static final UID:Ljava/lang/String; = "Uid"

.field public static final YOUR_ACH_UNLOCKED:Ljava/lang/String; = "YourAchUnlocked"

.field public static final YOUR_GP_EARNED:Ljava/lang/String; = "YourGpEarned"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final serialVersionUID:J = 0x432fec4c25f70c48L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1566
    const-string v0, "content://com.akop.bach.xboxliveprovider/compared_games"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$ComparedGameCursor;->CONTENT_URI:Landroid/net/Uri;

    .line 1592
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GameTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MyAchUnlocked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "YourAchUnlocked"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AchTotal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MyGpEarned"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "YourGpEarned"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GpTotal"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GameIconUrl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GameUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/XboxLive$ComparedGameCursor;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1609
    sget-object v0, Lcom/akop/bach/XboxLive$ComparedGameCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1611
    sget-object v0, Lcom/akop/bach/XboxLive$ComparedGameCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/XboxLive$ComparedGameCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1612
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "myAchieves"    # I
    .param p4, "yourAchieves"    # I
    .param p5, "achieveTotal"    # I
    .param p6, "myGamerscore"    # I
    .param p7, "yourGamerscore"    # I
    .param p8, "gamerscoreTotal"    # I
    .param p9, "boxartUrl"    # Ljava/lang/String;
    .param p10, "gamerUrl"    # Ljava/lang/String;

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/akop/bach/XboxLive$ComparedGameCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/XboxLive$ComparedGameCursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    .line 1631
    return-void
.end method

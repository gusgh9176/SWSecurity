.class public final Lcom/akop/bach/PSN$ComparedGameCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "PSN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparedGameCursor"
.end annotation


# static fields
.field public static final COLUMN_ICON_URL:I = 0x3

.field public static final COLUMN_OPP_BRONZE:I = 0xe

.field public static final COLUMN_OPP_GOLD:I = 0xc

.field public static final COLUMN_OPP_PLATINUM:I = 0xb

.field public static final COLUMN_OPP_PLAYED:I = 0xa

.field public static final COLUMN_OPP_PROGRESS:I = 0xf

.field public static final COLUMN_OPP_SILVER:I = 0xd

.field public static final COLUMN_SELF_BRONZE:I = 0x8

.field public static final COLUMN_SELF_GOLD:I = 0x6

.field public static final COLUMN_SELF_PLATINUM:I = 0x5

.field public static final COLUMN_SELF_PLAYED:I = 0x4

.field public static final COLUMN_SELF_PROGRESS:I = 0x9

.field public static final COLUMN_SELF_SILVER:I = 0x7

.field public static final COLUMN_TITLE:I = 0x2

.field public static final COLUMN_UID:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ICON_URL:Ljava/lang/String; = "GameIconUrl"

.field private static final KEYS:[Ljava/lang/String;

.field public static final OPP_BRONZE:Ljava/lang/String; = "OppBronze"

.field public static final OPP_GOLD:Ljava/lang/String; = "OppGold"

.field public static final OPP_PLATINUM:Ljava/lang/String; = "OppPlatinum"

.field public static final OPP_PLAYED:Ljava/lang/String; = "OppPlayed"

.field public static final OPP_PROGRESS:Ljava/lang/String; = "OppProgress"

.field public static final OPP_SILVER:Ljava/lang/String; = "OppSilver"

.field public static final SELF_BRONZE:Ljava/lang/String; = "SelfBronze"

.field public static final SELF_GOLD:Ljava/lang/String; = "SelfGold"

.field public static final SELF_PLATINUM:Ljava/lang/String; = "SelfPlatinum"

.field public static final SELF_PLAYED:Ljava/lang/String; = "SelfPlayed"

.field public static final SELF_PROGRESS:Ljava/lang/String; = "SelfProgress"

.field public static final SELF_SILVER:Ljava/lang/String; = "SelfSilver"

.field public static final TITLE:Ljava/lang/String; = "GameTitle"

.field public static final UID:Ljava/lang/String; = "Uid"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final serialVersionUID:J = -0x2859d368ddd20994L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 598
    const-string v0, "content://com.akop.bach.psnprovider/compared_games"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PSN$ComparedGameCursor;->CONTENT_URI:Landroid/net/Uri;

    .line 638
    const/16 v0, 0x10

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

    const-string v2, "GameIconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SelfPlayed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SelfPlatinum"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SelfGold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SelfSilver"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SelfBronze"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SelfProgress"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "OppPlayed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "OppPlatinum"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "OppGold"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OppSilver"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "OppBronze"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "OppProgress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/PSN$ComparedGameCursor;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 662
    sget-object v0, Lcom/akop/bach/PSN$ComparedGameCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 664
    sget-object v0, Lcom/akop/bach/PSN$ComparedGameCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/PSN$ComparedGameCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 665
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIIIZIIIII)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "selfPlayed"    # Z
    .param p5, "selfPlatinum"    # I
    .param p6, "selfGold"    # I
    .param p7, "selfSilver"    # I
    .param p8, "selfBronze"    # I
    .param p9, "selfProgress"    # I
    .param p10, "oppPlayed"    # Z
    .param p11, "oppPlatinum"    # I
    .param p12, "oppGold"    # I
    .param p13, "oppSilver"    # I
    .param p14, "oppBronze"    # I
    .param p15, "oppProgress"    # I

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/akop/bach/PSN$ComparedGameCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/PSN$ComparedGameCursor;->getCount()I

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

    move-result-object v1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

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

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v1

    if-eqz p10, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    .line 690
    return-void

    .line 673
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

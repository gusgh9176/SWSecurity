.class public final Lcom/akop/bach/PSN$ComparedTrophyCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "PSN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparedTrophyCursor"
.end annotation


# static fields
.field public static final COLUMN_DESCRIPTION:I = 0x2

.field public static final COLUMN_ICON_URL:I = 0x3

.field public static final COLUMN_IS_LOCKED:I = 0x6

.field public static final COLUMN_IS_SECRET:I = 0x5

.field public static final COLUMN_OPP_EARNED:I = 0x8

.field public static final COLUMN_SELF_EARNED:I = 0x7

.field public static final COLUMN_TITLE:I = 0x1

.field public static final COLUMN_TYPE:I = 0x4

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final ICON_URL:Ljava/lang/String; = "IconUrl"

.field public static final IS_LOCKED:Ljava/lang/String; = "IsLocked"

.field public static final IS_SECRET:Ljava/lang/String; = "IsSecret"

.field private static final KEYS:[Ljava/lang/String;

.field public static final OPP_EARNED:Ljava/lang/String; = "OppEarned"

.field public static final SELF_EARNED:Ljava/lang/String; = "SelfEarned"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final TYPE:Ljava/lang/String; = "Type"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final serialVersionUID:J = 0x42768bf1dae78a2fL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 714
    const-string v0, "content://com.akop.bach.psnprovider/compared_trophies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PSN$ComparedTrophyCursor;->CONTENT_URI:Landroid/net/Uri;

    .line 738
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IsSecret"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IsLocked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SelfEarned"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "OppEarned"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/PSN$ComparedTrophyCursor;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 753
    sget-object v0, Lcom/akop/bach/PSN$ComparedTrophyCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 755
    sget-object v0, Lcom/akop/bach/PSN$ComparedTrophyCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/PSN$ComparedTrophyCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 756
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isSecret"    # Z
    .param p6, "isLocked"    # Z
    .param p7, "selfEarned"    # Ljava/lang/String;
    .param p8, "oppEarned"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/akop/bach/PSN$ComparedTrophyCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/PSN$ComparedTrophyCursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    if-eqz p5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    if-eqz p6, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    .line 772
    return-void

    :cond_0
    move v0, v2

    .line 762
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

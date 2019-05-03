.class public Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "SerializableMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/SerializableMatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Lcom/akop/bach/SerializableMatrixCursor;


# direct methods
.method constructor <init>(Lcom/akop/bach/SerializableMatrixCursor;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 158
    iput-object p1, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->this$0:Lcom/akop/bach/SerializableMatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p2, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->index:I

    .line 160
    iput p3, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->endIndex:I

    .line 161
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    .locals 3
    .param p1, "columnValue"    # Ljava/lang/Object;

    .prologue
    .line 165
    iget v0, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->this$0:Lcom/akop/bach/SerializableMatrixCursor;

    invoke-static {v0}, Lcom/akop/bach/SerializableMatrixCursor;->access$000(Lcom/akop/bach/SerializableMatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 172
    return-object p0
.end method

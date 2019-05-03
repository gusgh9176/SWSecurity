.class public Lcom/akop/bach/SerializableMatrixCursor;
.super Landroid/database/AbstractCursor;
.source "SerializableMatrixCursor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8f36fa7777d682fL


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 55
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    .line 44
    iput-object p1, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnNames:[Ljava/lang/String;

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    .line 47
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 48
    const/4 p2, 0x1

    .line 50
    :cond_0
    iget v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/SerializableMatrixCursor;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/SerializableMatrixCursor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 128
    .local v2, "size":I
    iget v3, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    if-eq v2, v3, :cond_0

    .line 129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "columnNames.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", columnValues.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_0
    iget v3, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    .line 133
    iget-object v1, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    .line 134
    .local v1, "localData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 135
    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    .line 143
    .local v1, "oldData":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 144
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    .line 145
    move v0, p1

    .line 147
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .end local v0    # "newSize":I
    .end local v1    # "oldData":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 60
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iget v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->mPos:I

    if-gez v0, :cond_2

    .line 65
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    iget v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->mPos:I

    iget v1, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_3

    .line 68
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/akop/bach/SerializableMatrixCursor;->mPos:I

    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget v7, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    iget v8, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    mul-int v6, v7, v8

    .line 97
    .local v6, "start":I
    iget v7, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    add-int v3, v6, v7

    .line 98
    .local v3, "end":I
    invoke-direct {p0, v3}, Lcom/akop/bach/SerializableMatrixCursor;->ensureCapacity(I)V

    .line 100
    instance-of v7, p1, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 102
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-direct {p0, p1, v6}, Lcom/akop/bach/SerializableMatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 123
    :goto_0
    return-void

    .line 106
    .restart local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    move v1, v6

    .line 107
    .local v1, "current":I
    iget-object v5, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    .line 108
    .local v5, "localData":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "columnValue":Ljava/lang/Object;
    if-ne v1, v3, :cond_1

    .line 111
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "columnValues.size() > columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 114
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .local v2, "current":I
    aput-object v0, v5, v1

    move v1, v2

    .line 115
    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto :goto_1

    .line 117
    .end local v0    # "columnValue":Ljava/lang/Object;
    :cond_2
    if-eq v1, v3, :cond_3

    .line 118
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "columnValues.size() < columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 122
    :cond_3
    iget v7, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    goto :goto_0
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .param p1, "columnValues"    # [Ljava/lang/Object;

    .prologue
    .line 84
    array-length v1, p1

    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    iget v1, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    .line 90
    .local v0, "start":I
    iget v1, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/akop/bach/SerializableMatrixCursor;->ensureCapacity(I)V

    .line 91
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/akop/bach/SerializableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    .locals 4

    .prologue
    .line 75
    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    .line 76
    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->rowCount:I

    iget v3, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    .line 77
    .local v0, "endIndex":I
    invoke-direct {p0, v0}, Lcom/akop/bach/SerializableMatrixCursor;->ensureCapacity(I)V

    .line 78
    iget v2, p0, Lcom/akop/bach/SerializableMatrixCursor;->columnCount:I

    sub-int v1, v0, v2

    .line 79
    .local v1, "start":I
    new-instance v2, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;-><init>(Lcom/akop/bach/SerializableMatrixCursor;II)V

    return-object v2
.end method

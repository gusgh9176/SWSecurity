.class final Lbtools/expressions/BExpression;
.super Ljava/lang/Object;
.source "BExpression.java"


# static fields
.field private static final ADD_EXP:I = 0x14

.field private static final AND_EXP:I = 0xb

.field private static final ASSIGN_EXP:I = 0x1f

.field private static final EQUAL_EXP:I = 0x17

.field private static final FOREIGN_VARIABLE_EXP:I = 0x23

.field private static final GREATER_EXP:I = 0x18

.field private static final LESSER_EXP:I = 0x1b

.field private static final LOOKUP_EXP:I = 0x20

.field private static final MAX_EXP:I = 0x16

.field private static final MIN_EXP:I = 0x19

.field private static final MULTIPLY_EXP:I = 0x15

.field private static final NOT_EXP:I = 0xc

.field private static final NUMBER_EXP:I = 0x21

.field private static final OR_EXP:I = 0xa

.field private static final SUB_EXP:I = 0x1a

.field private static final SWITCH_EXP:I = 0x1e

.field private static final VARIABLE_EXP:I = 0x22

.field private static final XOR_EXP:I = 0x1c


# instance fields
.field private lookupNameIdx:I

.field private lookupValueIdxArray:[I

.field private numberValue:F

.field private op1:Lbtools/expressions/BExpression;

.field private op2:Lbtools/expressions/BExpression;

.field private op3:Lbtools/expressions/BExpression;

.field private typ:I

.field private variableIdx:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkExpectedToken(Lbtools/expressions/BExpressionContext;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Lbtools/expressions/BExpressionContext;
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContext;->parseToken()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    return-void
.end method

.method private max(FF)F
    .locals 1
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .prologue
    .line 278
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .end local p1    # "v1":F
    :goto_0
    return p1

    .restart local p1    # "v1":F
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private min(FF)F
    .locals 1
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .prologue
    .line 283
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .end local p1    # "v1":F
    :goto_0
    return p1

    .restart local p1    # "v1":F
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public static parse(Lbtools/expressions/BExpressionContext;I)Lbtools/expressions/BExpression;
    .locals 1
    .param p0, "ctx"    # Lbtools/expressions/BExpressionContext;
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbtools/expressions/BExpression;->parse(Lbtools/expressions/BExpressionContext;ILjava/lang/String;)Lbtools/expressions/BExpression;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Lbtools/expressions/BExpressionContext;ILjava/lang/String;)Lbtools/expressions/BExpression;
    .locals 23
    .param p0, "ctx"    # Lbtools/expressions/BExpressionContext;
    .param p1, "level"    # I
    .param p2, "optionalToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "brackets":Z
    invoke-virtual/range {p0 .. p0}, Lbtools/expressions/BExpressionContext;->parseToken()Ljava/lang/String;

    move-result-object v13

    .line 48
    .local v13, "operator":Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 50
    invoke-virtual/range {p0 .. p0}, Lbtools/expressions/BExpressionContext;->parseToken()Ljava/lang/String;

    move-result-object v13

    .line 52
    :cond_0
    const-string v20, "("

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual/range {p0 .. p0}, Lbtools/expressions/BExpressionContext;->parseToken()Ljava/lang/String;

    move-result-object v13

    .line 58
    :cond_1
    if-nez v13, :cond_4

    .line 60
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 237
    :cond_2
    :goto_0
    return-object v5

    .line 61
    :cond_3
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "unexpected end of file"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 64
    :cond_4
    if-nez p1, :cond_5

    .line 66
    const-string v20, "assign"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 68
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "operator "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is invalid on toplevel (only \'assign\' allowed)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 72
    :cond_5
    new-instance v5, Lbtools/expressions/BExpression;

    invoke-direct {v5}, Lbtools/expressions/BExpression;-><init>()V

    .line 73
    .local v5, "exp":Lbtools/expressions/BExpression;
    const/4 v10, 0x3

    .line 74
    .local v10, "nops":I
    const/4 v7, 0x0

    .line 76
    .local v7, "ifThenElse":Z
    const-string v20, "switch"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 78
    const/16 v20, 0x1e

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    .line 219
    :cond_6
    :goto_1
    if-lez v10, :cond_7

    .line 221
    add-int/lit8 v21, p1, 0x1

    iget v0, v5, Lbtools/expressions/BExpression;->typ:I

    move/from16 v20, v0

    const/16 v22, 0x1f

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    const-string v20, "="

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lbtools/expressions/BExpression;->parse(Lbtools/expressions/BExpressionContext;ILjava/lang/String;)Lbtools/expressions/BExpression;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    .line 223
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v10, v0, :cond_9

    .line 225
    if-eqz v7, :cond_8

    const-string v20, "then"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lbtools/expressions/BExpression;->checkExpectedToken(Lbtools/expressions/BExpressionContext;Ljava/lang/String;)V

    .line 226
    :cond_8
    add-int/lit8 v20, p1, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lbtools/expressions/BExpression;->parse(Lbtools/expressions/BExpressionContext;ILjava/lang/String;)Lbtools/expressions/BExpression;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    .line 228
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    if-le v10, v0, :cond_b

    .line 230
    if-eqz v7, :cond_a

    const-string v20, "else"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lbtools/expressions/BExpression;->checkExpectedToken(Lbtools/expressions/BExpressionContext;Ljava/lang/String;)V

    .line 231
    :cond_a
    add-int/lit8 v20, p1, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lbtools/expressions/BExpression;->parse(Lbtools/expressions/BExpressionContext;ILjava/lang/String;)Lbtools/expressions/BExpression;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lbtools/expressions/BExpression;->op3:Lbtools/expressions/BExpression;

    .line 233
    :cond_b
    if-eqz v3, :cond_2

    .line 235
    const-string v20, ")"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lbtools/expressions/BExpression;->checkExpectedToken(Lbtools/expressions/BExpressionContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_c
    const-string v20, "if"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 82
    const/16 v20, 0x1e

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    .line 83
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 87
    :cond_d
    const/4 v10, 0x2

    .line 89
    const-string v20, "or"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 91
    const/16 v20, 0xa

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 93
    :cond_e
    const-string v20, "and"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 95
    const/16 v20, 0xb

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 97
    :cond_f
    const-string v20, "multiply"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 99
    const/16 v20, 0x15

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 101
    :cond_10
    const-string v20, "add"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 103
    const/16 v20, 0x14

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 105
    :cond_11
    const-string v20, "max"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 107
    const/16 v20, 0x16

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 109
    :cond_12
    const-string v20, "min"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 111
    const/16 v20, 0x19

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 113
    :cond_13
    const-string v20, "equal"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 115
    const/16 v20, 0x17

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 117
    :cond_14
    const-string v20, "greater"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 119
    const/16 v20, 0x18

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 121
    :cond_15
    const-string v20, "sub"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 123
    const/16 v20, 0x1a

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 125
    :cond_16
    const-string v20, "lesser"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 127
    const/16 v20, 0x1b

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 129
    :cond_17
    const-string v20, "xor"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 131
    const/16 v20, 0x1c

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 135
    :cond_18
    const/4 v10, 0x1

    .line 136
    const-string v20, "assign"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 138
    if-lez p1, :cond_19

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "assign operator within expression"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 139
    :cond_19
    const/16 v20, 0x1f

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    .line 140
    invoke-virtual/range {p0 .. p0}, Lbtools/expressions/BExpressionContext;->parseToken()Ljava/lang/String;

    move-result-object v18

    .line 141
    .local v18, "variable":Ljava/lang/String;
    if-nez v18, :cond_1a

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "unexpected end of file"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 142
    :cond_1a
    const/16 v20, 0x3d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_1b

    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "variable name cannot contain \'=\': "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 143
    :cond_1b
    const/16 v20, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_1c

    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cannot assign context-prefixed variable: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 144
    :cond_1c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableIdx(Ljava/lang/String;Z)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->variableIdx:I

    .line 145
    iget v0, v5, Lbtools/expressions/BExpression;->variableIdx:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lbtools/expressions/BExpressionContext;->getMinWriteIdx()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cannot assign to readonly variable "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 147
    .end local v18    # "variable":Ljava/lang/String;
    :cond_1d
    const-string v20, "not"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 149
    const/16 v20, 0xc

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 153
    :cond_1e
    const/4 v10, 0x0

    .line 154
    const/16 v20, 0x3d

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 155
    .local v6, "idx":I
    if-ltz v6, :cond_23

    .line 157
    const/16 v20, 0x20

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    .line 158
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 161
    .local v17, "values":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lbtools/expressions/BExpressionContext;->getLookupNameIdx(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->lookupNameIdx:I

    .line 162
    iget v0, v5, Lbtools/expressions/BExpression;->lookupNameIdx:I

    move/from16 v20, v0

    if-gez v20, :cond_1f

    .line 164
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown lookup name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 166
    :cond_1f
    iget v0, v5, Lbtools/expressions/BExpression;->lookupNameIdx:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lbtools/expressions/BExpressionContext;->markLookupIdxUsed(I)V

    .line 167
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v20, "|"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v15, "tk":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    .line 169
    .local v11, "nt":I
    if-nez v11, :cond_20

    const/4 v12, 0x1

    .line 170
    .local v12, "nt2":I
    :goto_3
    new-array v0, v12, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v5, Lbtools/expressions/BExpression;->lookupValueIdxArray:[I

    .line 171
    const/4 v14, 0x0

    .local v14, "ti":I
    :goto_4
    if-ge v14, v12, :cond_6

    .line 173
    if-ge v14, v11, :cond_21

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 174
    .local v16, "value":Ljava/lang/String;
    :goto_5
    iget-object v0, v5, Lbtools/expressions/BExpression;->lookupValueIdxArray:[I

    move-object/from16 v20, v0

    iget v0, v5, Lbtools/expressions/BExpression;->lookupNameIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getLookupValueIdx(ILjava/lang/String;)I

    move-result v21

    aput v21, v20, v14

    .line 175
    iget-object v0, v5, Lbtools/expressions/BExpression;->lookupValueIdxArray:[I

    move-object/from16 v20, v0

    aget v20, v20, v14

    if-gez v20, :cond_22

    .line 177
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown lookup value: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .end local v12    # "nt2":I
    .end local v14    # "ti":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_20
    move v12, v11

    .line 169
    goto :goto_3

    .line 173
    .restart local v12    # "nt2":I
    .restart local v14    # "ti":I
    :cond_21
    const-string v16, ""

    goto :goto_5

    .line 171
    .restart local v16    # "value":Ljava/lang/String;
    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 181
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "nt":I
    .end local v12    # "nt2":I
    .end local v14    # "ti":I
    .end local v15    # "tk":Ljava/util/StringTokenizer;
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "values":Ljava/lang/String;
    :cond_23
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_24

    .line 183
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "context":Ljava/lang/String;
    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 185
    .local v19, "varname":Ljava/lang/String;
    const/16 v20, 0x23

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lbtools/expressions/BExpressionContext;->getForeignVariableIdx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->variableIdx:I

    goto/16 :goto_1

    .line 188
    .end local v4    # "context":Ljava/lang/String;
    .end local v19    # "varname":Ljava/lang/String;
    :cond_24
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lbtools/expressions/BExpressionContext;->getVariableIdx(Ljava/lang/String;Z)I

    move-result v6

    if-ltz v6, :cond_25

    .line 190
    const/16 v20, 0x22

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    .line 191
    iput v6, v5, Lbtools/expressions/BExpression;->variableIdx:I

    goto/16 :goto_1

    .line 193
    :cond_25
    const-string v20, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 195
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->numberValue:F

    .line 196
    const/16 v20, 0x21

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 198
    :cond_26
    const-string v20, "false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_27

    .line 200
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->numberValue:F

    .line 201
    const/16 v20, 0x21

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I

    goto/16 :goto_1

    .line 207
    :cond_27
    :try_start_0
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->numberValue:F

    .line 208
    const/16 v20, 0x21

    move/from16 v0, v20

    iput v0, v5, Lbtools/expressions/BExpression;->typ:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 210
    :catch_0
    move-exception v9

    .line 212
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown expression: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 221
    .end local v6    # "idx":I
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    :cond_28
    const/16 v20, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public evaluate(Lbtools/expressions/BExpressionContext;)F
    .locals 6
    .param p1, "ctx"    # Lbtools/expressions/BExpressionContext;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 252
    iget v2, p0, Lbtools/expressions/BExpression;->typ:I

    packed-switch v2, :pswitch_data_0

    .line 272
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown op-code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/expressions/BExpression;->typ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :pswitch_1
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-object v2, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-object v5, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v5, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v5

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_3

    :goto_2
    xor-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 256
    :pswitch_3
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    move v1, v0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 257
    :pswitch_4
    iget-object v0, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    iget-object v1, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v1, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 258
    :pswitch_5
    iget-object v0, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    iget-object v1, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v1, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 259
    :pswitch_6
    iget-object v0, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    iget-object v1, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v1, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 260
    :pswitch_7
    iget-object v0, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    iget-object v1, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v1, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lbtools/expressions/BExpression;->max(FF)F

    move-result v0

    goto :goto_0

    .line 261
    :pswitch_8
    iget-object v0, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    iget-object v1, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v1, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lbtools/expressions/BExpression;->min(FF)F

    move-result v0

    goto/16 :goto_0

    .line 262
    :pswitch_9
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    iget-object v3, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v3, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 263
    :pswitch_a
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    iget-object v3, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v3, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 264
    :pswitch_b
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    iget-object v3, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v3, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 265
    :pswitch_c
    iget-object v0, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbtools/expressions/BExpression;->op2:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lbtools/expressions/BExpression;->op3:Lbtools/expressions/BExpression;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v0

    goto/16 :goto_0

    .line 266
    :pswitch_d
    iget v0, p0, Lbtools/expressions/BExpression;->variableIdx:I

    iget-object v1, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v1, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lbtools/expressions/BExpressionContext;->assign(IF)F

    move-result v0

    goto/16 :goto_0

    .line 267
    :pswitch_e
    iget v0, p0, Lbtools/expressions/BExpression;->lookupNameIdx:I

    iget-object v1, p0, Lbtools/expressions/BExpression;->lookupValueIdxArray:[I

    invoke-virtual {p1, v0, v1}, Lbtools/expressions/BExpressionContext;->getLookupMatch(I[I)F

    move-result v0

    goto/16 :goto_0

    .line 268
    :pswitch_f
    iget v0, p0, Lbtools/expressions/BExpression;->numberValue:F

    goto/16 :goto_0

    .line 269
    :pswitch_10
    iget v0, p0, Lbtools/expressions/BExpression;->variableIdx:I

    invoke-virtual {p1, v0}, Lbtools/expressions/BExpressionContext;->getVariableValue(I)F

    move-result v0

    goto/16 :goto_0

    .line 270
    :pswitch_11
    iget v0, p0, Lbtools/expressions/BExpression;->variableIdx:I

    invoke-virtual {p1, v0}, Lbtools/expressions/BExpressionContext;->getForeignVariableValue(I)F

    move-result v0

    goto/16 :goto_0

    .line 271
    :pswitch_12
    iget-object v2, p0, Lbtools/expressions/BExpression;->op1:Lbtools/expressions/BExpression;

    invoke-virtual {v2, p1}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

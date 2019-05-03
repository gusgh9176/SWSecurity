.class public Lcom/akop/bach/parser/ParserException;
.super Ljava/lang/Exception;
.source "ParserException.java"


# static fields
.field private static final serialVersionUID:J = -0x5e91e9ad86d67d74L


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

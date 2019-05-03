.class public Lcom/akop/bach/parser/TokenException;
.super Lcom/akop/bach/parser/ParserException;
.source "TokenException.java"


# static fields
.field private static final serialVersionUID:J = 0x63e6f01cd82ccb62L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const v0, 0x7f08007f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

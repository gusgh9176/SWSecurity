.class public Lcom/akop/bach/fragment/GenericFragment$IconCursor2;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "GenericFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/GenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IconCursor2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5433dd657fd8064cL


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Icon1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Icon2"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 99
    return-void
.end method

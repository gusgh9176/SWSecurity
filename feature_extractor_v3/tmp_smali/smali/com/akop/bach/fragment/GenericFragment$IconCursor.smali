.class public Lcom/akop/bach/fragment/GenericFragment$IconCursor;
.super Lcom/akop/bach/SerializableMatrixCursor;
.source "GenericFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/GenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IconCursor"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e01df3f9969d582L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Icon"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/akop/bach/SerializableMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 89
    return-void
.end method

.class public final Lcom/akop/bach/PSN$ComparedTrophyInfo;
.super Ljava/lang/Object;
.source "PSN.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/PSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparedTrophyInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4caefa2b02bbca72L


# instance fields
.field public cursor:Lcom/akop/bach/PSN$ComparedTrophyCursor;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    new-instance v0, Lcom/akop/bach/PSN$ComparedTrophyCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/PSN$ComparedTrophyCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/PSN$ComparedTrophyInfo;->cursor:Lcom/akop/bach/PSN$ComparedTrophyCursor;

    .line 784
    return-void
.end method

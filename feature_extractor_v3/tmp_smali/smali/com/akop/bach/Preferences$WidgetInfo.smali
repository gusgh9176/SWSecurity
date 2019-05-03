.class public Lcom/akop/bach/Preferences$WidgetInfo;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetInfo"
.end annotation


# instance fields
.field public account:Lcom/akop/bach/BasicAccount;

.field public componentName:Landroid/content/ComponentName;

.field public widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

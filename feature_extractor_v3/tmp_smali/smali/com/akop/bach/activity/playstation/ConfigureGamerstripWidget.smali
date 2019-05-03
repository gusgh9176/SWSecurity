.class public Lcom/akop/bach/activity/playstation/ConfigureGamerstripWidget;
.super Lcom/akop/bach/activity/ConfigureWidget;
.source "ConfigureGamerstripWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/akop/bach/activity/ConfigureWidget;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccountClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 39
    const-class v0, Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method protected getWidgetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/akop/bach/widget/PsnGamerstrip;

    return-object v0
.end method

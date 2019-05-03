.class Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;
.super Ljava/lang/Object;
.source "ConfigureWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/ConfigureWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfo"
.end annotation


# instance fields
.field public screenName:Ljava/lang/String;

.field final synthetic this$0:Lcom/akop/bach/activity/ConfigureWidget;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/ConfigureWidget;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;->this$0:Lcom/akop/bach/activity/ConfigureWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;->screenName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;->uuid:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;->screenName:Ljava/lang/String;

    return-object v0
.end method

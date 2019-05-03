.class Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;
.super Ljava/lang/Object;
.source "AccountSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/akop/bach/activity/AccountSelector$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/AccountSelector;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/AccountSelector;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;->this$0:Lcom/akop/bach/activity/AccountSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/AccountSelector;Lcom/akop/bach/activity/AccountSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/AccountSelector;
    .param p2, "x1"    # Lcom/akop/bach/activity/AccountSelector$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;-><init>(Lcom/akop/bach/activity/AccountSelector;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/akop/bach/activity/AccountSelector$AccountInfo;Lcom/akop/bach/activity/AccountSelector$AccountInfo;)I
    .locals 2
    .param p1, "object1"    # Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    .param p2, "object2"    # Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .prologue
    .line 144
    iget-object v0, p1, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, -0x1

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p2, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->uuid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p1, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/activity/AccountSelector$AccountInfoComparator;->compare(Lcom/akop/bach/activity/AccountSelector$AccountInfo;Lcom/akop/bach/activity/AccountSelector$AccountInfo;)I

    move-result v0

    return v0
.end method

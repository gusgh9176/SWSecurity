.class Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;
.super Ljava/lang/Object;
.source "NewAccount.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/NewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/akop/bach/activity/NewAccount$TypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/NewAccount;


# direct methods
.method private constructor <init>(Lcom/akop/bach/activity/NewAccount;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;->this$0:Lcom/akop/bach/activity/NewAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/activity/NewAccount;Lcom/akop/bach/activity/NewAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/activity/NewAccount;
    .param p2, "x1"    # Lcom/akop/bach/activity/NewAccount$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;-><init>(Lcom/akop/bach/activity/NewAccount;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/akop/bach/activity/NewAccount$TypeInfo;Lcom/akop/bach/activity/NewAccount$TypeInfo;)I
    .locals 2
    .param p1, "object1"    # Lcom/akop/bach/activity/NewAccount$TypeInfo;
    .param p2, "object2"    # Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .prologue
    .line 180
    iget-boolean v0, p1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->isEnabled:Z

    if-nez v0, :cond_0

    .line 181
    const v0, 0x7fffffff

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-boolean v0, p2, Lcom/akop/bach/activity/NewAccount$TypeInfo;->isEnabled:Z

    if-nez v0, :cond_1

    .line 183
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/akop/bach/activity/NewAccount$TypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/activity/NewAccount$TypeInfoComparator;->compare(Lcom/akop/bach/activity/NewAccount$TypeInfo;Lcom/akop/bach/activity/NewAccount$TypeInfo;)I

    move-result v0

    return v0
.end method

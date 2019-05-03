.class public Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/parser/XboxLiveParser$Gamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/akop/bach/parser/XboxLiveParser$Gamer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/akop/bach/parser/XboxLiveParser$Gamer;Lcom/akop/bach/parser/XboxLiveParser$Gamer;)I
    .locals 2
    .param p1, "object1"    # Lcom/akop/bach/parser/XboxLiveParser$Gamer;
    .param p2, "object2"    # Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    .prologue
    .line 2930
    iget-object v0, p1, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    iget-object v1, p2, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2925
    check-cast p1, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/akop/bach/parser/XboxLiveParser$Gamer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;->compare(Lcom/akop/bach/parser/XboxLiveParser$Gamer;Lcom/akop/bach/parser/XboxLiveParser$Gamer;)I

    move-result v0

    return v0
.end method

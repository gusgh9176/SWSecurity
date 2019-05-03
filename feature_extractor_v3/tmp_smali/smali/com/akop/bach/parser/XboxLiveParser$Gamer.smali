.class final Lcom/akop/bach/parser/XboxLiveParser$Gamer;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/parser/XboxLiveParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Gamer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/parser/XboxLiveParser$Gamer$Comparator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67ea28bc20fedc2dL


# instance fields
.field public CurrentActivity:Ljava/lang/String;

.field public Gamerscore:I

.field public Gamertag:Ljava/lang/String;

.field public IconUrl:Ljava/lang/String;

.field public IsFriend:Z

.field public TitleIconUrl:Ljava/lang/String;

.field public TitleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2916
    iput-boolean v1, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IsFriend:Z

    .line 2917
    iput-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamertag:Ljava/lang/String;

    .line 2918
    iput-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->IconUrl:Ljava/lang/String;

    .line 2919
    iput-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleIconUrl:Ljava/lang/String;

    .line 2920
    iput-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->CurrentActivity:Ljava/lang/String;

    .line 2921
    iput v1, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->Gamerscore:I

    .line 2922
    iput-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$Gamer;->TitleId:Ljava/lang/String;

    .line 2923
    return-void
.end method

.class public final Lcom/akop/bach/XboxLive$GameOverviewInfo;
.super Ljava/lang/Object;
.source "XboxLive.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameOverviewInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/XboxLive$GameOverviewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AverageRating:I

.field public BannerUrl:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public EsrbRatingDescription:Ljava/lang/String;

.field public EsrbRatingIconUrl:Ljava/lang/String;

.field public ManualUrl:Ljava/lang/String;

.field public MyRating:I

.field public Screenshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2007
    new-instance v0, Lcom/akop/bach/XboxLive$GameOverviewInfo$1;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$GameOverviewInfo$1;-><init>()V

    sput-object v0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    .line 2005
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2022
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->BannerUrl:Ljava/lang/String;

    .line 2023
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Title:Ljava/lang/String;

    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Description:Ljava/lang/String;

    .line 2025
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->ManualUrl:Ljava/lang/String;

    .line 2026
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingDescription:Ljava/lang/String;

    .line 2027
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingIconUrl:Ljava/lang/String;

    .line 2028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->MyRating:I

    .line 2029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->AverageRating:I

    .line 2030
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    .line 2031
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akop/bach/XboxLive$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/akop/bach/XboxLive$1;

    .prologue
    .line 1990
    invoke-direct {p0, p1}, Lcom/akop/bach/XboxLive$GameOverviewInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2050
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->BannerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->ManualUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2042
    iget v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->MyRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    iget v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->AverageRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2045
    return-void
.end method

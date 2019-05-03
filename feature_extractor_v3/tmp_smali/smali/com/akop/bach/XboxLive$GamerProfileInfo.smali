.class public final Lcom/akop/bach/XboxLive$GamerProfileInfo;
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
    name = "GamerProfileInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/XboxLive$GamerProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AccountId:J

.field public Beacons:[Lcom/akop/bach/XboxLive$BeaconInfo;

.field public CurrentActivity:Ljava/lang/String;

.field public Gamerscore:I

.field public Gamertag:Ljava/lang/String;

.field public IconUrl:Ljava/lang/String;

.field public IsFriend:Z

.field public TitleIconUrl:Ljava/lang/String;

.field public TitleId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1939
    new-instance v0, Lcom/akop/bach/XboxLive$GamerProfileInfo$1;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$GamerProfileInfo$1;-><init>()V

    sput-object v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    iput-boolean v3, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    .line 1931
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->AccountId:J

    .line 1932
    iput-object v2, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    .line 1933
    iput-object v2, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IconUrl:Ljava/lang/String;

    .line 1934
    iput v3, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamerscore:I

    .line 1935
    iput-object v2, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CurrentActivity:Ljava/lang/String;

    .line 1936
    iput-object v2, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Beacons:[Lcom/akop/bach/XboxLive$BeaconInfo;

    .line 1937
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1954
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->AccountId:J

    .line 1955
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamerscore:I

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IconUrl:Ljava/lang/String;

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CurrentActivity:Ljava/lang/String;

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleIconUrl:Ljava/lang/String;

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleId:Ljava/lang/String;

    .line 1964
    sget-object v0, Lcom/akop/bach/XboxLive$BeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/akop/bach/XboxLive$BeaconInfo;

    iput-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Beacons:[Lcom/akop/bach/XboxLive$BeaconInfo;

    .line 1965
    return-void

    .line 1955
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akop/bach/XboxLive$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/akop/bach/XboxLive$1;

    .prologue
    .line 1915
    invoke-direct {p0, p1}, Lcom/akop/bach/XboxLive$GamerProfileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1986
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1970
    iget-wide v2, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->AccountId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1971
    iget-boolean v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1972
    iget v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamerscore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CurrentActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->TitleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Beacons:[Lcom/akop/bach/XboxLive$BeaconInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1981
    return-void

    :cond_0
    move v0, v1

    .line 1971
    goto :goto_0
.end method

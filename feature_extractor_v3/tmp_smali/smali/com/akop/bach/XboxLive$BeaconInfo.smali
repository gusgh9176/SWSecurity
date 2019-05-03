.class public final Lcom/akop/bach/XboxLive$BeaconInfo;
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
    name = "BeaconInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/XboxLive$BeaconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Text:Ljava/lang/String;

.field public TitleBoxArtUrl:Ljava/lang/String;

.field public TitleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1880
    new-instance v0, Lcom/akop/bach/XboxLive$BeaconInfo$1;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$BeaconInfo$1;-><init>()V

    sput-object v0, Lcom/akop/bach/XboxLive$BeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1875
    const-string v0, "TitleName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleName:Ljava/lang/String;

    .line 1876
    const-string v0, "TitleBoxart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleBoxArtUrl:Ljava/lang/String;

    .line 1877
    const-string v0, "Text"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->Text:Ljava/lang/String;

    .line 1878
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleName:Ljava/lang/String;

    .line 1896
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleBoxArtUrl:Ljava/lang/String;

    .line 1897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->Text:Ljava/lang/String;

    .line 1898
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akop/bach/XboxLive$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/akop/bach/XboxLive$1;

    .prologue
    .line 1867
    invoke-direct {p0, p1}, Lcom/akop/bach/XboxLive$BeaconInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1904
    iget-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleBoxArtUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1905
    iget-object v0, p0, Lcom/akop/bach/XboxLive$BeaconInfo;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1906
    return-void
.end method

.class public Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;
.super Ljava/lang/Object;
.source "XboxLive.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive$LiveStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public status:I

.field public statusText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1781
    new-instance v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category$1;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category$1;-><init>()V

    sput-object v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1796
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->name:Ljava/lang/String;

    .line 1797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->status:I

    .line 1798
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->statusText:Ljava/lang/String;

    .line 1799
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akop/bach/XboxLive$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/akop/bach/XboxLive$1;

    .prologue
    .line 1771
    invoke-direct {p0, p1}, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1812
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1805
    iget v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1806
    iget-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->statusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1807
    return-void
.end method

.class public final Lcom/akop/bach/XboxLive$LiveStatusInfo;
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
    name = "LiveStatusInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/XboxLive$LiveStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1823
    new-instance v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$1;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$LiveStatusInfo$1;-><init>()V

    sput-object v0, Lcom/akop/bach/XboxLive$LiveStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo;->categories:Ljava/util/List;

    .line 1821
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo;->categories:Ljava/util/List;

    .line 1840
    iget-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo;->categories:Ljava/util/List;

    sget-object v1, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1841
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akop/bach/XboxLive$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/akop/bach/XboxLive$1;

    .prologue
    .line 1769
    invoke-direct {p0, p1}, Lcom/akop/bach/XboxLive$LiveStatusInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "statusText"    # Ljava/lang/String;

    .prologue
    .line 1845
    new-instance v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;

    invoke-direct {v0}, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;-><init>()V

    .line 1847
    .local v0, "cat":Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;
    iput-object p1, v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->name:Ljava/lang/String;

    .line 1848
    iput p2, v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->status:I

    .line 1849
    iput-object p3, v0, Lcom/akop/bach/XboxLive$LiveStatusInfo$Category;->statusText:Ljava/lang/String;

    .line 1851
    iget-object v1, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo;->categories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1863
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/akop/bach/XboxLive$LiveStatusInfo;->categories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1858
    return-void
.end method

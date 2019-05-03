.class public Lcom/akop/bach/util/rss/RssItem;
.super Ljava/lang/Object;
.source "RssItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/util/rss/RssItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public description:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public thumbUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/akop/bach/util/rss/RssItem$1;

    invoke-direct {v0}, Lcom/akop/bach/util/rss/RssItem$1;-><init>()V

    sput-object v0, Lcom/akop/bach/util/rss/RssItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->description:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->description:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->description:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->description:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->thumbUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akop/bach/util/rss/RssItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/akop/bach/util/rss/RssItem$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/akop/bach/util/rss/RssItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->thumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method

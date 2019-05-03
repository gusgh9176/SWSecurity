.class public Lcom/akop/bach/fragment/playstation/FriendsFragment$RequestInformation;
.super Ljava/lang/Object;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInformation"
.end annotation


# instance fields
.field public gamertag:Ljava/lang/String;

.field public resId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$RequestInformation;->resId:I

    .line 157
    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$RequestInformation;->gamertag:Ljava/lang/String;

    .line 158
    return-void
.end method

.class public interface abstract Lbtools/routingapp/IBRouterService;
.super Ljava/lang/Object;
.source "IBRouterService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtools/routingapp/IBRouterService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTrackFromParams(Landroid/os/Bundle;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public abstract Lcom/lge/camera/controller/camera/CameraController;
.super Lcom/lge/camera/controller/Controller;
.source "CameraController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CameraMediator;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    return-object v0
.end method

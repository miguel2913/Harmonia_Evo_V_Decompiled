.class Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnZoomChangeListenerAdapter"
.end annotation


# instance fields
.field mCallback:Lcom/scalado/camera/Camera$OnZoomChangeListener;

.field mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/Camera$OnZoomChangeListener;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;->mCallback:Lcom/scalado/camera/Camera$OnZoomChangeListener;

    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    return-void
.end method

.method public static createOnZoomChangeListenerAdapter(Lcom/scalado/camera/Camera$OnZoomChangeListener;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;-><init>(Lcom/scalado/camera/Camera$OnZoomChangeListener;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;->mCallback:Lcom/scalado/camera/Camera$OnZoomChangeListener;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v0, p1, p2, v1}, Lcom/scalado/camera/Camera$OnZoomChangeListener;->onZoomChange(IZLcom/scalado/camera/Camera;)V

    return-void
.end method

.class public Lcom/discretix/drm/api/IDxDrmCoreStream;
.super Lcom/discretix/drm/api/IDxDrmCoreContent;
.source "IDxDrmCoreStream.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/discretix/drm/api/IDxDrmCoreStream;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreStream_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/discretix/drm/api/IDxDrmCoreContent;-><init>(JZ)V

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxDrmCoreStream;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetDRMContentType()Lcom/discretix/drm/api/EDxDrmContentType;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreStream_GetDRMContentType(JLcom/discretix/drm/api/IDxDrmCoreStream;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmContentType;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmContentType;

    move-result-object v0

    return-object v0
.end method

.method public ProcessPacket(J[BJ[B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 9

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreStream_ProcessPacket(JLcom/discretix/drm/api/IDxDrmCoreStream;J[BJ[B)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public SetActiveContentByTrackId(J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxDrmCoreStream_SetActiveContentByTrackId(JLcom/discretix/drm/api/IDxDrmCoreStream;J)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/IDxDrmCoreContent;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->delete_IDxDrmCoreStream(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxDrmCoreStream;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/discretix/drm/api/IDxDrmCoreContent;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxDrmCoreStream;->delete()V

    return-void
.end method

.class public Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cppInstance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/dao/ConfigDao;->LIB_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->loadLibrary(Ljava/lang/String;)Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    .line 24
    invoke-direct {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->newTccRemoteSyncCheckUtilInstance()I

    move-result v0

    iput v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    .line 25
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 27
    :cond_0
    return-void
.end method

.method private native deleteTccRemoteSyncCheckUtilInstance(I)V
.end method

.method private native getPostBody(I)[B
.end method

.method private native getPostUrl(I)Ljava/lang/String;
.end method

.method private native getRemoteContactDelTotal(ILjava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method private native getRemoteSyncCheck(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method private native makeCheckWapDataPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native newTccRemoteSyncCheckUtilInstance()I
.end method

.method private native solveLoginResponsePackage(I[BI)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->release()V

    .line 40
    return-void
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostBody(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteContactDelTotal(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteContactDelTotal(ILjava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public getRemoteSyncCheck(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iget v1, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteSyncCheck(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public makeCheckWapDataPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget v1, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->makeCheckWapDataPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->deleteTccRemoteSyncCheckUtilInstance(I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    .line 35
    :cond_0
    return-void
.end method

.method public solveLoginResponsePackage([BI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->solveLoginResponsePackage(I[BI)I

    move-result v0

    return v0
.end method

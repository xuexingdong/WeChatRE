.class public final Lcom/tencent/mm/compatible/audio/MMRemoteController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BK:Ljava/lang/reflect/Method;

.field private static BL:Ljava/lang/reflect/Method;


# instance fields
.field private BI:Landroid/media/AudioManager;

.field private BJ:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    :try_start_0
    sget-object v0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BK:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "registerMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BK:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BL:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "unregisterMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BL:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final finalize()V
    .locals 5

    .prologue
    .line 198
    :try_start_0
    sget-object v0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BL:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 199
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    return-void

    .line 198
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BL:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BI:Landroid/media/AudioManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/compatible/audio/MMRemoteController;->BJ:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/tencent/mm/compatible/audio/MMRemoteController$Receiver;->dS()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "MicroMsg.RemoteControlReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception in unregister() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/n;->ah(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "MicroMsg.RemoteControlReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/n;->ah(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

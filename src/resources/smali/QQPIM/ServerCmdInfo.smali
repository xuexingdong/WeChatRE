.class public final LQQPIM/ServerCmdInfo;
.super Lcom/a/b/a/g;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_cloudinfos:Ljava/util/ArrayList;


# instance fields
.field public cloudinfos:Ljava/util/ArrayList;

.field public nextcheckinterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, LQQPIM/ServerCmdInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ServerCmdInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/a/b/a/g;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/a/b/a/g;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    .line 48
    iput-object p1, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    .line 49
    iput p2, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    .line 50
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "QQPIM.ServerCmdInfo"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :cond_0
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/ServerCmdInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/a/b/a/b;

    invoke-direct {v0, p1, p2}, Lcom/a/b/a/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 99
    iget-object v1, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    const-string v2, "cloudinfos"

    invoke-virtual {v0, v1, v2}, Lcom/a/b/a/b;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/a/b/a/b;

    .line 100
    iget v1, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    const-string v2, "nextcheckinterval"

    invoke-virtual {v0, v1, v2}, Lcom/a/b/a/b;->b(ILjava/lang/String;)Lcom/a/b/a/b;

    .line 101
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    check-cast p1, LQQPIM/ServerCmdInfo;

    .line 56
    iget-object v0, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    iget-object v1, p1, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/a/b/a/h;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    iget v1, p1, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    invoke-static {v0, v1}, Lcom/a/b/a/h;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method public final getCloudinfos()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNextcheckinterval()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    return v0
.end method

.method public final readFrom(Lcom/a/b/a/d;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 84
    sget-object v0, LQQPIM/ServerCmdInfo;->cache_cloudinfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/ServerCmdInfo;->cache_cloudinfos:Ljava/util/ArrayList;

    .line 87
    new-instance v0, LQQPIM/CloudInfo;

    invoke-direct {v0}, LQQPIM/CloudInfo;-><init>()V

    .line 88
    sget-object v1, LQQPIM/ServerCmdInfo;->cache_cloudinfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    sget-object v0, LQQPIM/ServerCmdInfo;->cache_cloudinfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/a/b/a/d;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/ServerCmdInfo;->setCloudinfos(Ljava/util/ArrayList;)V

    .line 92
    iget v0, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/b/a/d;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/ServerCmdInfo;->setNextcheckinterval(I)V

    .line 94
    return-void
.end method

.method public final setCloudinfos(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public final setNextcheckinterval(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    .line 38
    return-void
.end method

.method public final writeTo(Lcom/a/b/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LQQPIM/ServerCmdInfo;->cloudinfos:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/b/a/f;->a(Ljava/util/Collection;I)V

    .line 77
    iget v0, p0, LQQPIM/ServerCmdInfo;->nextcheckinterval:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/b/a/f;->d(II)V

    .line 78
    return-void
.end method

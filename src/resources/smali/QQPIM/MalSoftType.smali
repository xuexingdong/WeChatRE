.class public final LQQPIM/MalSoftType;
.super Lcom/a/b/a/g;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_malsofttype:I

.field static cache_softkey:LQQPIM/SoftKey;


# instance fields
.field public malsofttype:I

.field public softkey:LQQPIM/SoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, LQQPIM/MalSoftType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/MalSoftType;->$assertionsDisabled:Z

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

    iput-object v0, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    .line 42
    return-void
.end method

.method public constructor <init>(LQQPIM/SoftKey;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/a/b/a/g;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    .line 48
    iput-object p1, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    .line 49
    iput p2, p0, LQQPIM/MalSoftType;->malsofttype:I

    .line 50
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "QQPIM.MalSoftType"

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

    sget-boolean v1, LQQPIM/MalSoftType;->$assertionsDisabled:Z

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
    .line 97
    new-instance v0, Lcom/a/b/a/b;

    invoke-direct {v0, p1, p2}, Lcom/a/b/a/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 98
    iget-object v1, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/a/b/a/b;->a(Lcom/a/b/a/g;Ljava/lang/String;)Lcom/a/b/a/b;

    .line 99
    iget v1, p0, LQQPIM/MalSoftType;->malsofttype:I

    const-string v2, "malsofttype"

    invoke-virtual {v0, v1, v2}, Lcom/a/b/a/b;->b(ILjava/lang/String;)Lcom/a/b/a/b;

    .line 100
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    check-cast p1, LQQPIM/MalSoftType;

    .line 56
    iget-object v0, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    iget-object v1, p1, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    invoke-static {v0, v1}, Lcom/a/b/a/h;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    iget v1, p1, LQQPIM/MalSoftType;->malsofttype:I

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

.method public final getMalsofttype()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    return v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final readFrom(Lcom/a/b/a/d;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 85
    sget-object v0, LQQPIM/MalSoftType;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/MalSoftType;->cache_softkey:LQQPIM/SoftKey;

    .line 89
    :cond_0
    sget-object v0, LQQPIM/MalSoftType;->cache_softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/b/a/d;->a(Lcom/a/b/a/g;IZ)Lcom/a/b/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    .line 91
    iget v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/a/b/a/d;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    .line 93
    return-void
.end method

.method public final setMalsofttype(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, LQQPIM/MalSoftType;->malsofttype:I

    .line 38
    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    .line 28
    return-void
.end method

.method public final writeTo(Lcom/a/b/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LQQPIM/MalSoftType;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/b/a/f;->a(Lcom/a/b/a/g;I)V

    .line 77
    iget v0, p0, LQQPIM/MalSoftType;->malsofttype:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/b/a/f;->d(II)V

    .line 78
    return-void
.end method

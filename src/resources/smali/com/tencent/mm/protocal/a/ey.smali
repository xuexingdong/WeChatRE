.class public final Lcom/tencent/mm/protocal/a/ey;
.super Lcom/tencent/mm/ae/a;
.source "SourceFile"


# instance fields
.field private aVy:Ljava/lang/String;

.field private aVz:Z

.field private bJC:I

.field private bJD:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tencent/mm/ae/a;-><init>()V

    return-void
.end method

.method private Sx()Lcom/tencent/mm/protocal/a/ey;
    .locals 3

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ey;->bJD:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, La/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not all required fields were included (false = not included in message),  FriendType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/a/ey;->bJD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-object p0
.end method

.method public static bC([B)Lcom/tencent/mm/protocal/a/ey;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 129
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/ey;->buU:La/a/a/a/a/b;

    invoke-direct {v2, p0, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-virtual {v2}, La/a/a/a/a;->alZ()I

    move-result v0

    new-instance v3, Lcom/tencent/mm/protocal/a/ey;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/ey;-><init>()V

    :goto_0
    if-lez v0, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v2}, La/a/a/a/a;->ama()V

    :cond_0
    invoke-virtual {v2}, La/a/a/a/a;->alZ()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, La/a/a/a/a;->alU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/protocal/a/ey;->aVy:Ljava/lang/String;

    iput-boolean v1, v3, Lcom/tencent/mm/protocal/a/ey;->aVz:Z

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->alS()I

    move-result v0

    iput v0, v3, Lcom/tencent/mm/protocal/a/ey;->bJC:I

    iput-boolean v1, v3, Lcom/tencent/mm/protocal/a/ey;->bJD:Z

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/ey;->Sx()Lcom/tencent/mm/protocal/a/ey;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final Sw()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/mm/protocal/a/ey;->bJC:I

    return v0
.end method

.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ey;->aVz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ey;->aVy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->p(ILjava/lang/String;)V

    .line 92
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/ey;->bJC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->aa(II)V

    .line 93
    return-void
.end method

.method public final cE()I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ey;->aVz:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ey;->aVy:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/b/b/a;->o(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 71
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/ey;->bJC:I

    invoke-static {v1, v2}, La/a/a/a;->U(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    add-int/lit8 v0, v0, 0x0

    .line 74
    return v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ey;->aVy:Ljava/lang/String;

    return-object v0
.end method

.method public final toByteArray()[B
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/ey;->Sx()Lcom/tencent/mm/protocal/a/ey;

    .line 86
    invoke-super {p0}, Lcom/tencent/mm/ae/a;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const-string v0, ""

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ey;->aVz:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ey;->aVy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FriendType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/a/ey;->bJC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method

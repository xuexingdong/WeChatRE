.class public final Lcom/tencent/mm/protocal/a/ll;
.super Lcom/tencent/mm/ae/a;
.source "SourceFile"


# instance fields
.field private aiM:Z

.field private bVt:I

.field private bVu:Z

.field private byC:Lcom/tencent/mm/protocal/a/x;

.field private byD:Z

.field private byO:Z

.field private byQ:Z

.field private bze:Ljava/lang/String;

.field private bzj:Ljava/lang/String;

.field private bzl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tencent/mm/ae/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->byC:Lcom/tencent/mm/protocal/a/x;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/x;->cE()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->Y(II)V

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ll;->byC:Lcom/tencent/mm/protocal/a/x;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/x;->a(La/a/a/c/a;)V

    .line 149
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/ll;->bVt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->aa(II)V

    .line 150
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->byO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->bze:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->p(ILjava/lang/String;)V

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->byQ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->bzj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->p(ILjava/lang/String;)V

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->aiM:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->bzl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->p(ILjava/lang/String;)V

    .line 153
    :cond_2
    return-void
.end method

.method public final aY(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/ll;
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/ll;->byC:Lcom/tencent/mm/protocal/a/x;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->byD:Z

    .line 38
    return-object p0
.end method

.method public final cE()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/ll;->bVt:I

    invoke-static {v0, v1}, La/a/a/a;->U(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 124
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ll;->byO:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ll;->bze:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/b/b/a;->o(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ll;->byQ:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ll;->bzj:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/b/b/a;->o(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ll;->aiM:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ll;->bzl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/b/b/a;->o(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ll;->byC:Lcom/tencent/mm/protocal/a/x;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/x;->cE()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->V(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public final nB(I)Lcom/tencent/mm/protocal/a/ll;
    .locals 1
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/mm/protocal/a/ll;->bVt:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->bVu:Z

    .line 44
    return-object p0
.end method

.method public final qM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ll;
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/ll;->bze:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->byO:Z

    .line 50
    return-object p0
.end method

.method public final qN(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ll;
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/ll;->bzj:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->byQ:Z

    .line 56
    return-object p0
.end method

.method public final qO(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ll;
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/ll;->bzl:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->aiM:Z

    .line 62
    return-object p0
.end method

.method public final toByteArray()[B
    .locals 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->byD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/ll;->bVu:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, La/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not all required fields were included (false = not included in message),  BaseRequest:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/a/ll;->byD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/a/ll;->bVu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ae/a;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    const-string v0, ""

    .line 100
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

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BaseRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->byC:Lcom/tencent/mm/protocal/a/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/a/ll;->bVt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ll;->byO:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FromUserName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->bze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ll;->byQ:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ToUserName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->bzj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/ll;->aiM:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ClientMsgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ll;->bzl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

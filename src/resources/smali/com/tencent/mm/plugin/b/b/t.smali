.class public final Lcom/tencent/mm/plugin/b/b/t;
.super Lcom/tencent/mm/k/u;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ad/z;


# instance fields
.field private ES:Lcom/tencent/mm/k/h;

.field private final Ft:Lcom/tencent/mm/ad/ai;


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/mm/k/u;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "arg list must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/b/b/m;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/b/b/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/b/b/t;->Ft:Lcom/tencent/mm/ad/ai;

    .line 31
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/b/t;->Ft:Lcom/tencent/mm/ad/ai;

    invoke-interface {v0}, Lcom/tencent/mm/ad/ai;->jv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/b/b/o;

    .line 32
    iget-object v1, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    sget-object v2, Lcom/tencent/mm/protocal/a;->buY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/na;->rs(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/na;

    .line 33
    iget-object v1, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    sget-object v2, Lcom/tencent/mm/protocal/a;->buZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/na;->rr(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/na;

    .line 34
    iget-object v1, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    sget-object v2, Lcom/tencent/mm/protocal/a;->bvc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/na;->ru(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/na;

    .line 35
    iget-object v1, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/m;->ZO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/na;->rv(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/na;

    .line 36
    iget-object v1, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    sget-object v2, Lcom/tencent/mm/protocal/a;->bvb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/na;->rt(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/na;

    .line 37
    iget-object v1, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/na;->oM(I)Lcom/tencent/mm/protocal/a/na;

    .line 38
    iget-object v0, v0, Lcom/tencent/mm/plugin/b/b/o;->aIC:Lcom/tencent/mm/protocal/a/na;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/na;->ae(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/a/na;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ad/o;Lcom/tencent/mm/k/h;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p2, p0, Lcom/tencent/mm/plugin/b/b/t;->ES:Lcom/tencent/mm/k/h;

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/b/t;->Ft:Lcom/tencent/mm/ad/ai;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/b/b/t;->a(Lcom/tencent/mm/ad/o;Lcom/tencent/mm/ad/ai;Lcom/tencent/mm/ad/z;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/ad/ai;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 45
    const-string v0, "MicroMsg.NetSceneUserActionReport"

    const-string v1, "get report strategy ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/n;->ak(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/b/t;->ES:Lcom/tencent/mm/k/h;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/k/h;->a(IILjava/lang/String;Lcom/tencent/mm/k/u;)V

    .line 48
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x137

    return v0
.end method

.class public final Lcom/tencent/mm/plugin/sns/b/aa;
.super Lcom/tencent/mm/protocal/r;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/p;


# instance fields
.field public aSQ:Lcom/tencent/mm/protocal/a/ks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/protocal/r;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/mm/protocal/a/ks;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ks;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/sns/b/aa;->aSQ:Lcom/tencent/mm/protocal/a/ks;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x3b9aca74

    return v0
.end method

.method public final o([B)I
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/tencent/mm/protocal/a/ks;->cF([B)Lcom/tencent/mm/protocal/a/ks;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/sns/b/aa;->aSQ:Lcom/tencent/mm/protocal/a/ks;

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/sns/b/aa;->aSQ:Lcom/tencent/mm/protocal/a/ks;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ks;->Ov()Lcom/tencent/mm/protocal/a/y;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/n;->a(Lcom/tencent/mm/protocal/r;Lcom/tencent/mm/protocal/a/y;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/plugin/sns/b/aa;->aSQ:Lcom/tencent/mm/protocal/a/ks;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ks;->Ov()Lcom/tencent/mm/protocal/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/y;->Cl()I

    move-result v0

    return v0
.end method

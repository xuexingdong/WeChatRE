.class public final Lcom/tencent/mm/protocal/ax;
.super Lcom/tencent/mm/protocal/r;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/p;


# instance fields
.field public bvT:Lcom/tencent/mm/protocal/a/bi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/protocal/r;-><init>()V

    .line 29
    new-instance v0, Lcom/tencent/mm/protocal/a/bi;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/bi;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/ax;->bvT:Lcom/tencent/mm/protocal/a/bi;

    .line 33
    return-void
.end method


# virtual methods
.method public final o([B)I
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/tencent/mm/protocal/a/bi;->aP([B)Lcom/tencent/mm/protocal/a/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/ax;->bvT:Lcom/tencent/mm/protocal/a/bi;

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/protocal/ax;->bvT:Lcom/tencent/mm/protocal/a/bi;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/bi;->Ov()Lcom/tencent/mm/protocal/a/y;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/n;->a(Lcom/tencent/mm/protocal/r;Lcom/tencent/mm/protocal/a/y;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/ax;->bvT:Lcom/tencent/mm/protocal/a/bi;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/bi;->Ov()Lcom/tencent/mm/protocal/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/y;->Cl()I

    move-result v0

    return v0
.end method

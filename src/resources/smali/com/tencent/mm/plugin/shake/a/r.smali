.class public final Lcom/tencent/mm/plugin/shake/a/r;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public aJA:Lcom/tencent/mm/protocal/a/jl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 108
    new-instance v0, Lcom/tencent/mm/protocal/a/jl;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/jl;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/shake/a/r;->aJA:Lcom/tencent/mm/protocal/a/jl;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x80

    return v0
.end method

.method public final kG()[B
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/mm/plugin/shake/a/r;->aJA:Lcom/tencent/mm/protocal/a/jl;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/jl;->aF(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/jl;

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/plugin/shake/a/r;->aJA:Lcom/tencent/mm/protocal/a/jl;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/jl;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x13d

    return v0
.end method

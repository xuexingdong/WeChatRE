.class public final Lcom/tencent/mm/l/s;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field Jo:Lcom/tencent/mm/protocal/a/aq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/mm/protocal/a/aq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/aq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/l/s;->Jo:Lcom/tencent/mm/protocal/a/aq;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xb0

    return v0
.end method

.method public final kG()[B
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/mm/l/s;->Jo:Lcom/tencent/mm/protocal/a/aq;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/aq;->q(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/aq;

    .line 16
    iget-object v0, p0, Lcom/tencent/mm/l/s;->Jo:Lcom/tencent/mm/protocal/a/aq;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/aq;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x167

    return v0
.end method

.class public final Lcom/tencent/mm/protocal/bf;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public bvZ:Lcom/tencent/mm/protocal/a/by;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 9
    new-instance v0, Lcom/tencent/mm/protocal/a/by;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/by;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/bf;->bvZ:Lcom/tencent/mm/protocal/a/by;

    return-void
.end method


# virtual methods
.method public final kG()[B
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tencent/mm/protocal/bf;->bvZ:Lcom/tencent/mm/protocal/a/by;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/by;->y(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/by;

    .line 14
    iget-object v0, p0, Lcom/tencent/mm/protocal/bf;->bvZ:Lcom/tencent/mm/protocal/a/by;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/by;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0xb0

    return v0
.end method

.class public final Lcom/tencent/mm/plugin/nearby/c/b;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public ayU:Lcom/tencent/mm/protocal/a/fh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 12
    new-instance v0, Lcom/tencent/mm/protocal/a/fh;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fh;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/nearby/c/b;->ayU:Lcom/tencent/mm/protocal/a/fh;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public final kG()[B
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/mm/plugin/nearby/c/b;->ayU:Lcom/tencent/mm/protocal/a/fh;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fh;->ae(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/fh;

    .line 27
    iget-object v0, p0, Lcom/tencent/mm/plugin/nearby/c/b;->ayU:Lcom/tencent/mm/protocal/a/fh;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fh;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x94

    return v0
.end method

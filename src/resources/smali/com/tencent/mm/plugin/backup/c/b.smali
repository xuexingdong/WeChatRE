.class public final Lcom/tencent/mm/plugin/backup/c/b;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public amu:Lcom/tencent/mm/protocal/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/protocal/a/e;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/c/b;->amu:Lcom/tencent/mm/protocal/a/e;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x8d

    return v0
.end method

.method public final kG()[B
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/c/b;->amu:Lcom/tencent/mm/protocal/a/e;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/e;->b(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/e;

    .line 31
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/c/b;->amu:Lcom/tencent/mm/protocal/a/e;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/e;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x148

    return v0
.end method

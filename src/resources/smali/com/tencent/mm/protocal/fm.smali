.class public final Lcom/tencent/mm/protocal/fm;
.super Lcom/tencent/mm/protocal/r;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/p;


# instance fields
.field public bxu:Lcom/tencent/mm/protocal/a/ii;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/protocal/r;-><init>()V

    .line 36
    new-instance v0, Lcom/tencent/mm/protocal/a/ii;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ii;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/fm;->bxu:Lcom/tencent/mm/protocal/a/ii;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x3b9aca22

    return v0
.end method

.method public final o([B)I
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/tencent/mm/protocal/a/ii;->cd([B)Lcom/tencent/mm/protocal/a/ii;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/fm;->bxu:Lcom/tencent/mm/protocal/a/ii;

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/protocal/fm;->bxu:Lcom/tencent/mm/protocal/a/ii;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ii;->Ov()Lcom/tencent/mm/protocal/a/y;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/n;->a(Lcom/tencent/mm/protocal/r;Lcom/tencent/mm/protocal/a/y;)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/protocal/fm;->bxu:Lcom/tencent/mm/protocal/a/ii;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ii;->Ov()Lcom/tencent/mm/protocal/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/y;->Cl()I

    move-result v0

    return v0
.end method

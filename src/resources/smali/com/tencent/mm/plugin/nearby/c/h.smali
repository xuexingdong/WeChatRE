.class public final Lcom/tencent/mm/plugin/nearby/c/h;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public ayY:Lcom/tencent/mm/protocal/a/fk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 12
    new-instance v0, Lcom/tencent/mm/protocal/a/fk;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fk;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/nearby/c/h;->ayY:Lcom/tencent/mm/protocal/a/fk;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xb8

    return v0
.end method

.method public final kG()[B
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/mm/plugin/nearby/c/h;->ayY:Lcom/tencent/mm/protocal/a/fk;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fk;->af(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/fk;

    .line 17
    iget-object v0, p0, Lcom/tencent/mm/plugin/nearby/c/h;->ayY:Lcom/tencent/mm/protocal/a/fk;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fk;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x179

    return v0
.end method

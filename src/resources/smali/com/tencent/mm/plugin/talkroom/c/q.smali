.class public final Lcom/tencent/mm/plugin/talkroom/c/q;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public bkB:Lcom/tencent/mm/protocal/a/ly;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/mm/protocal/a/ly;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ly;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/talkroom/c/q;->bkB:Lcom/tencent/mm/protocal/a/ly;

    return-void
.end method


# virtual methods
.method public final jY()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public final kG()[B
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/plugin/talkroom/c/q;->bkB:Lcom/tencent/mm/protocal/a/ly;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ly;->bc(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/ly;

    .line 26
    iget-object v0, p0, Lcom/tencent/mm/plugin/talkroom/c/q;->bkB:Lcom/tencent/mm/protocal/a/ly;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ly;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x175

    return v0
.end method

.class public final Lcom/tencent/mm/plugin/b/b/h;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public aIs:Lcom/tencent/mm/protocal/a/fb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/mm/protocal/a/fb;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fb;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/b/b/h;->aIs:Lcom/tencent/mm/protocal/a/fb;

    return-void
.end method


# virtual methods
.method public final kG()[B
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/b/h;->aIs:Lcom/tencent/mm/protocal/a/fb;

    invoke-static {p0}, Lcom/tencent/mm/protocal/n;->b(Lcom/tencent/mm/protocal/q;)Lcom/tencent/mm/protocal/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fb;->ad(Lcom/tencent/mm/protocal/a/x;)Lcom/tencent/mm/protocal/a/fb;

    .line 21
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/b/h;->aIs:Lcom/tencent/mm/protocal/a/fb;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fb;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final kH()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x136

    return v0
.end method

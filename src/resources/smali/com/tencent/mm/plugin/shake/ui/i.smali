.class final Lcom/tencent/mm/plugin/shake/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/applet/n;


# instance fields
.field final synthetic aLS:Lcom/tencent/mm/plugin/shake/ui/g;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/shake/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tencent/mm/plugin/shake/ui/i;->aLS:Lcom/tencent/mm/plugin/shake/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eo(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 277
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/shake/ui/i;->aLS:Lcom/tencent/mm/plugin/shake/ui/g;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/shake/ui/g;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 278
    :cond_0
    const-string v0, "MicroMsg.ShakeFriendAdapter"

    const-string v2, "pos is invalid"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/n;->ah(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 283
    :goto_0
    return-object v0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/shake/ui/i;->aLS:Lcom/tencent/mm/plugin/shake/ui/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/shake/ui/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/shake/a/ad;

    .line 283
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/shake/a/ad;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final zI()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/mm/plugin/shake/ui/i;->aLS:Lcom/tencent/mm/plugin/shake/ui/g;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/shake/ui/g;->getCount()I

    move-result v0

    return v0
.end method

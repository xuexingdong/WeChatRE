.class final Lcom/tencent/mm/plugin/shake/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/storage/n;


# instance fields
.field final synthetic aKb:Lcom/tencent/mm/plugin/shake/a/al;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/shake/a/al;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tencent/mm/plugin/shake/a/ao;->aKb:Lcom/tencent/mm/plugin/shake/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/l;Lcom/tencent/mm/storage/k;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/k;->eJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/tencent/mm/plugin/shake/a/al;->Dc()Lcom/tencent/mm/plugin/shake/a/ae;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/k;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/shake/a/ae;->ji(Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

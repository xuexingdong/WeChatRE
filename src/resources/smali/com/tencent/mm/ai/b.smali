.class final Lcom/tencent/mm/ai/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic daa:Lcom/tencent/mm/ai/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ai/a;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/mm/ai/b;->daa:Lcom/tencent/mm/ai/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ai/b;->daa:Lcom/tencent/mm/ai/a;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/a;->qp()V

    .line 49
    return-void
.end method

.class final Lcom/tencent/mm/ui/setting/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic cQk:Lcom/tencent/mm/z/as;

.field final synthetic cQl:Lcom/tencent/mm/ui/setting/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/h;Lcom/tencent/mm/z/as;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/i;->cQl:Lcom/tencent/mm/ui/setting/h;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/i;->cQk:Lcom/tencent/mm/z/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-static {}, Lcom/tencent/mm/model/bd;->hM()Lcom/tencent/mm/k/y;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/i;->cQk:Lcom/tencent/mm/z/as;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/k/y;->c(Lcom/tencent/mm/k/u;)V

    .line 87
    return-void
.end method

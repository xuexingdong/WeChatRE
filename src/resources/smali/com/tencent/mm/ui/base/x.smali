.class final Lcom/tencent/mm/ui/base/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic coo:Lcom/tencent/mm/ui/base/v;

.field final synthetic cop:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/v;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/tencent/mm/ui/base/x;->coo:Lcom/tencent/mm/ui/base/v;

    iput-object p2, p0, Lcom/tencent/mm/ui/base/x;->cop:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->cop:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->cop:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/x;->coo:Lcom/tencent/mm/ui/base/v;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/x;->coo:Lcom/tencent/mm/ui/base/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/v;->cancel()V

    .line 232
    return-void
.end method

.class final Lcom/tencent/mm/ui/contact/fw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cHd:Lcom/tencent/mm/ui/contact/fv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/fv;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/fw;->cHd:Lcom/tencent/mm/ui/contact/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fw;->cHd:Lcom/tencent/mm/ui/contact/fv;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/fv;->cHc:Lcom/tencent/mm/ui/contact/fu;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/fu;->cGW:Lcom/tencent/mm/ui/contact/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/fn;->b(Lcom/tencent/mm/ui/contact/fn;)V

    .line 511
    return-void
.end method

.class final Lcom/tencent/mm/ui/gz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bs;


# instance fields
.field final synthetic cku:Lcom/tencent/mm/ui/QConversationUI;

.field final synthetic ckv:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QConversationUI;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tencent/mm/ui/gz;->cku:Lcom/tencent/mm/ui/QConversationUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/gz;->ckv:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final id()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/tencent/mm/ui/gz;->ckv:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/ui/gz;->ckv:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 282
    :cond_0
    return-void
.end method

.method public final ie()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/mm/ui/gz;->cku:Lcom/tencent/mm/ui/QConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QConversationUI;->e(Lcom/tencent/mm/ui/QConversationUI;)Z

    move-result v0

    return v0
.end method

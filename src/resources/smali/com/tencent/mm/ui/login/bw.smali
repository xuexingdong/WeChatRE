.class final Lcom/tencent/mm/ui/login/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cNg:Lcom/tencent/mm/ui/login/RegByMobileRegUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/mm/ui/login/bw;->cNg:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/bw;->cNg:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    const-class v2, Lcom/tencent/mm/ui/tools/CountryCodeUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v1, "country_name"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/bw;->cNg:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->b(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "couttry_code"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/bw;->cNg:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->c(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/tencent/mm/ui/login/bw;->cNg:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method

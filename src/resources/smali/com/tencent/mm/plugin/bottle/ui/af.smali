.class final Lcom/tencent/mm/plugin/bottle/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic atP:Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/mm/plugin/bottle/ui/af;->atP:Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/bottle/ui/af;->atP:Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;

    const-class v2, Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/tencent/mm/plugin/bottle/ui/af;->atP:Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/bottle/ui/af;->atP:Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/bottle/ui/BottleWizardStep1;->finish()V

    .line 102
    return-void
.end method

.class final Lcom/tencent/mm/ui/applet/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic cng:Lcom/tencent/mm/ui/applet/Updater;

.field final synthetic cnh:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic yB:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/applet/Updater;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tencent/mm/ui/applet/aq;->yB:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/applet/aq;->cng:Lcom/tencent/mm/ui/applet/Updater;

    iput-object p3, p0, Lcom/tencent/mm/ui/applet/aq;->cnh:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/aq;->yB:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 204
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 206
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/Updater;->pn(I)V

    .line 207
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/aq;->cng:Lcom/tencent/mm/ui/applet/Updater;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/applet/Updater;->onStop()V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/aq;->cng:Lcom/tencent/mm/ui/applet/Updater;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/Updater;->a(Lcom/tencent/mm/ui/applet/Updater;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/aq;->cnh:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/aq;->cnh:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 213
    :cond_0
    return-void
.end method

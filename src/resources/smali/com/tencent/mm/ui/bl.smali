.class final Lcom/tencent/mm/ui/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/applet/m;


# instance fields
.field final synthetic chl:Lcom/tencent/mm/ui/bk;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/mm/ui/bl;->chl:Lcom/tencent/mm/ui/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ik(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/j/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

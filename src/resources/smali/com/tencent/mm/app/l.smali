.class final Lcom/tencent/mm/app/l;
.super Lcom/tencent/mm/booter/cache/a;
.source "SourceFile"


# instance fields
.field final synthetic yT:Lcom/tencent/mm/app/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/j;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tencent/mm/app/l;->yT:Lcom/tencent/mm/app/j;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/cache/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final cT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "avatar_cache"

    return-object v0
.end method

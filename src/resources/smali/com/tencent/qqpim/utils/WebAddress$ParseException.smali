.class public Lcom/tencent/qqpim/utils/WebAddress$ParseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public response:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qqpim/utils/WebAddress;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/utils/WebAddress;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tencent/qqpim/utils/WebAddress$ParseException;->this$0:Lcom/tencent/qqpim/utils/WebAddress;

    .line 148
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/tencent/qqpim/utils/WebAddress$ParseException;->response:Ljava/lang/String;

    return-void
.end method

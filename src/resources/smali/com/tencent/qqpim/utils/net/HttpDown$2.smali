.class Lcom/tencent/qqpim/utils/net/HttpDown$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpim/utils/net/HttpDown;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/utils/net/HttpDown;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v0, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->getNetworkInfo()I

    move-result v0

    .line 80
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/utils/net/HttpDown;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->access$1(Lcom/tencent/qqpim/utils/net/HttpDown;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/utils/net/HttpDown;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpim/utils/net/HttpDown;->access$1(Lcom/tencent/qqpim/utils/net/HttpDown;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/utils/net/HttpDown;->mData:[B
    invoke-static {v1}, Lcom/tencent/qqpim/utils/net/HttpDown;->access$2(Lcom/tencent/qqpim/utils/net/HttpDown;)[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/utils/net/HttpDown;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qqpim/utils/net/HttpDown;->access$3(Lcom/tencent/qqpim/utils/net/HttpDown;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;I)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/utils/net/HttpDown;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qqpim/utils/net/HttpDown;->access$3(Lcom/tencent/qqpim/utils/net/HttpDown;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/utils/net/HttpDown;->mData:[B
    invoke-static {v3}, Lcom/tencent/qqpim/utils/net/HttpDown;->access$2(Lcom/tencent/qqpim/utils/net/HttpDown;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 103
    invoke-virtual {v2, v4}, Lorg/apache/http/entity/ByteArrayEntity;->setChunked(Z)V

    .line 104
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 106
    iget-object v2, p0, Lcom/tencent/qqpim/utils/net/HttpDown$2;->this$0:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;I)V

    goto :goto_0
.end method

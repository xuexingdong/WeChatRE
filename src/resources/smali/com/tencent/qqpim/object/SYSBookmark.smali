.class public Lcom/tencent/qqpim/object/SYSBookmark;
.super Lcom/tencent/qqpim/object/SYSEntity;
.source "SourceFile"


# static fields
.field public static final FROM_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field public static final TAG_FROM:Ljava/lang/String; = "BROWSERSOURCE"

.field public static final TAG_TITLE:Ljava/lang/String; = "TITLE"

.field public static final TAG_URI:Ljava/lang/String; = "URL"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/qqpim/object/SYSEntity;-><init>()V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSBookmark;->currentIndex:Ljava/lang/Integer;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSBookmark;->values:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSBookmark;->_Id:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getCheckSum()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSBookmark;->values:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v2

    :cond_0
    move v1, v2

    move-object v3, v0

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSBookmark;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    invoke-virtual {v4, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 76
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v2, v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSBookmark;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    .line 64
    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSBookmark;->values:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getEntityType()Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VBOOKMARK:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    return-object v0
.end method

.class public Lcom/tencent/qqpim/utils/CodeInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFormatOk(C)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    sub-int v0, p3, p2

    new-array v1, v0, [C

    move v0, p2

    .line 19
    :goto_0
    if-lt p2, p3, :cond_0

    .line 28
    if-ne v0, p2, :cond_2

    .line 29
    const/4 v0, 0x0

    .line 32
    :goto_1
    return-object v0

    .line 20
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 21
    invoke-direct {p0, v2}, Lcom/tencent/qqpim/utils/CodeInputFilter;->isFormatOk(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    aput-char v2, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 19
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

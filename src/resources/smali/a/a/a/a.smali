.class public final La/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static U(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    if-ltz p1, :cond_0

    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    invoke-static {p1}, La/a/a/b/b/a;->rG(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static V(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    invoke-static {p1}, La/a/a/b/b/a;->rG(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public static a(IILjava/util/LinkedList;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 53
    if-eqz p2, :cond_2

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The data type was not found, the id used was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v0

    move v2, v0

    .line 56
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 100
    :cond_0
    :goto_1
    return v1

    .line 57
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ae/b;

    invoke-static {p0, v0}, La/a/a/a;->a(ILcom/tencent/mm/ae/b;)I

    move-result v0

    add-int/2addr v0, v1

    .line 56
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :pswitch_1
    move v1, v0

    move v2, v0

    .line 61
    :goto_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 62
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    .line 61
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :pswitch_2
    move v1, v0

    move v2, v0

    .line 66
    :goto_3
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 67
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :pswitch_3
    move v1, v0

    move v2, v0

    .line 71
    :goto_4
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 72
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, La/a/a/a;->U(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 71
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    :pswitch_4
    move v1, v0

    move v2, v0

    .line 76
    :goto_5
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 77
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, La/a/a/a;->c(IJ)I

    move-result v0

    add-int/2addr v0, v1

    .line 76
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :pswitch_5
    move v1, v0

    move v2, v0

    .line 81
    :goto_6
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 82
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, La/a/a/b/b/a;->o(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 81
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :pswitch_6
    move v1, v0

    move v2, v0

    .line 86
    :goto_7
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 87
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    .line 86
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    :pswitch_7
    move v1, v0

    move v2, v0

    .line 91
    :goto_8
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 92
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    invoke-interface {v0}, La/a/a/b;->cE()I

    move-result v0

    invoke-static {p0, v0}, La/a/a/a;->V(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 91
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    :cond_2
    move v1, v0

    goto/16 :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(ILcom/tencent/mm/ae/b;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/mm/ae/b;->size()I

    move-result v1

    invoke-static {v1}, La/a/a/b/b/a;->rG(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/tencent/mm/ae/b;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/util/LinkedList;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    move v2, v0

    .line 110
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 113
    invoke-static {v2}, La/a/a/b/b/a;->rG(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 114
    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, La/a/a/b/b/a;->rG(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static alR()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-static {v0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static c(IJ)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 39
    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static o(ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1}, La/a/a/b/b/a;->o(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static rv(I)I
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, La/a/a/b/b/a;->rE(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

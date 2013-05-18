.class public abstract Lcom/tencent/qqpim/object/SYSEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qqpim/interfaces/IEntity;


# instance fields
.field protected _Id:Ljava/lang/String;

.field protected currentIndex:Ljava/lang/Integer;

.field protected editGroupNumberData:Z

.field protected groupIds:Ljava/util/List;

.field protected values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->_Id:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentValue()Lcom/tencent/qqpim/object/Record;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/tencent/qqpim/object/SYSEntity;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    goto :goto_0
.end method

.method public getGroupIds()Ljava/util/List;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->groupIds:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->_Id:Ljava/lang/String;

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEditGroupNumberData()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->editGroupNumberData:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToFirst()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    .line 70
    const/4 v0, 0x1

    .line 72
    :cond_0
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public putValue(Lcom/tencent/qqpim/object/Record;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public putValue(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public removeCurrent()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSEntity;->values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSEntity;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEditGroupNumberData(Z)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/tencent/qqpim/object/SYSEntity;->editGroupNumberData:Z

    .line 132
    return-void
.end method

.method public setGroupIds(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tencent/qqpim/object/SYSEntity;->groupIds:Ljava/util/List;

    .line 141
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/qqpim/object/SYSEntity;->_Id:Ljava/lang/String;

    .line 42
    return-void
.end method

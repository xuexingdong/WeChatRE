.class public final Lcom/tencent/mm/protocal/MMProtocalJni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static native mergeSyncKey([B[BLcom/tencent/mm/pointers/PByteArray;)Z
.end method

.method public static native pack([BLcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BLjava/lang/String;III[B[B)Z
.end method

.method public static native setClientPackVersion(I)Z
.end method

.method public static native unpack(Lcom/tencent/mm/pointers/PByteArray;[B[BLcom/tencent/mm/pointers/PByteArray;Lcom/tencent/mm/pointers/PInt;)Z
.end method

.method public static native verifySyncKey([B)Z
.end method

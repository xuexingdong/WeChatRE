.class final Lcom/tencent/qphone/base/remote/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/qphone/base/remote/ToServiceMsg;

    invoke-direct {v0, p1}, Lcom/tencent/qphone/base/remote/ToServiceMsg;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    new-array v0, p1, [Lcom/tencent/qphone/base/remote/ToServiceMsg;

    return-object v0
.end method

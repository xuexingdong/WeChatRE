.class public final LQQPIM/EMalSoftType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MST_BeInstalled:LQQPIM/EMalSoftType; = null

.field public static final MST_BeTerminated:LQQPIM/EMalSoftType; = null

.field public static final MST_BeUninstalled:LQQPIM/EMalSoftType; = null

.field public static final MST_BlockNetLink:LQQPIM/EMalSoftType; = null

.field public static final MST_BlockSMS:LQQPIM/EMalSoftType; = null

.field public static final MST_NONE:LQQPIM/EMalSoftType; = null

.field public static final _MST_BeInstalled:I = 0x5

.field public static final _MST_BeTerminated:I = 0x3

.field public static final _MST_BeUninstalled:I = 0x2

.field public static final _MST_BlockNetLink:I = 0x4

.field public static final _MST_BlockSMS:I = 0x1

.field public static final _MST_NONE:I

.field private static __values:[LQQPIM/EMalSoftType;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, LQQPIM/EMalSoftType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EMalSoftType;->$assertionsDisabled:Z

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [LQQPIM/EMalSoftType;

    sput-object v0, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    .line 16
    new-instance v0, LQQPIM/EMalSoftType;

    const-string v3, "MST_NONE"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EMalSoftType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMalSoftType;->MST_NONE:LQQPIM/EMalSoftType;

    .line 18
    new-instance v0, LQQPIM/EMalSoftType;

    const-string v2, "MST_BlockSMS"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EMalSoftType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMalSoftType;->MST_BlockSMS:LQQPIM/EMalSoftType;

    .line 20
    new-instance v0, LQQPIM/EMalSoftType;

    const-string v1, "MST_BeUninstalled"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EMalSoftType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMalSoftType;->MST_BeUninstalled:LQQPIM/EMalSoftType;

    .line 22
    new-instance v0, LQQPIM/EMalSoftType;

    const-string v1, "MST_BeTerminated"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EMalSoftType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMalSoftType;->MST_BeTerminated:LQQPIM/EMalSoftType;

    .line 24
    new-instance v0, LQQPIM/EMalSoftType;

    const-string v1, "MST_BlockNetLink"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EMalSoftType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMalSoftType;->MST_BlockNetLink:LQQPIM/EMalSoftType;

    .line 26
    new-instance v0, LQQPIM/EMalSoftType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "MST_BeInstalled"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMalSoftType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMalSoftType;->MST_BeInstalled:LQQPIM/EMalSoftType;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EMalSoftType;->__T:Ljava/lang/String;

    .line 66
    iput-object p3, p0, LQQPIM/EMalSoftType;->__T:Ljava/lang/String;

    .line 67
    iput p2, p0, LQQPIM/EMalSoftType;->__value:I

    .line 68
    sget-object v0, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    aput-object p0, v0, p1

    .line 69
    return-void
.end method

.method public static convert(I)LQQPIM/EMalSoftType;
    .locals 2
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 37
    sget-boolean v0, LQQPIM/EMalSoftType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_0
    sget-object v1, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EMalSoftType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    .line 34
    sget-object v1, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    aget-object v0, v1, v0

    .line 38
    :goto_1
    return-object v0

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/EMalSoftType;
    .locals 2
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 50
    sget-boolean v0, LQQPIM/EMalSoftType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_0
    sget-object v1, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EMalSoftType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, LQQPIM/EMalSoftType;->__values:[LQQPIM/EMalSoftType;

    aget-object v0, v1, v0

    .line 51
    :goto_1
    return-object v0

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LQQPIM/EMalSoftType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, LQQPIM/EMalSoftType;->__value:I

    return v0
.end method

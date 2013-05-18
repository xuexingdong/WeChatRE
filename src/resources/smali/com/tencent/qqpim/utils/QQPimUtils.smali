.class public Lcom/tencent/qqpim/utils/QQPimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APPLICATION_CONTEXT:Landroid/content/Context; = null

.field private static final BOOKMARK_MAP:Ljava/lang/String; = "_bookmark_db.map"

.field private static final CALLLOG_MAP:Ljava/lang/String; = "_calllog_db.map"

.field private static final CONTACT_MAP:Ljava/lang/String; = "_contact_db.map"

.field public static final DEBUG:Z = false

.field public static final LOG:Ljava/lang/String; = "sdcard/qqpimlog.txt"

.field private static final LOG_TAG:Ljava/lang/String; = "QQPimUtils"

.field public static final OS_1_5:I = 0x3

.field public static final OS_1_6:I = 0x4

.field public static final OS_2:I = 0x5

.field public static final OS_2_0_1:I = 0x6

.field public static final OS_2_1:I = 0x7

.field public static final OS_2_2:I = 0x8

.field private static final POST_URL_MOBILE:Ljava/lang/String; = "http://jsync.3g.qq.com/android"

.field public static SDCARD_MAP_DIR:Ljava/lang/String; = null

.field private static final SMS_MAP:Ljava/lang/String; = "_sms_db.map"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

.field public static userStoppedSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->UNKNOWN:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    .line 82
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSDCardDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->SDCARD_MAP_DIR:Ljava/lang/String;

    .line 53
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.qqpim/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilesDir(Z)Z
    .locals 4
    .parameter

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createFilesDir err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static divideStringToList(Ljava/lang/String;[CC)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 625
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 663
    :goto_0
    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 629
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v4

    .line 634
    :goto_1
    if-lt v0, v5, :cond_1

    .line 662
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 663
    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 636
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_8

    .line 638
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v5, :cond_7

    .line 640
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v4

    .line 643
    :goto_2
    if-eqz p1, :cond_2

    array-length v7, p1

    if-lt v3, v7, :cond_3

    .line 634
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_3
    aget-char v7, p1, v3

    if-ne v6, v7, :cond_6

    .line 645
    const/16 v3, 0x72

    if-ne v6, v3, :cond_4

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 649
    goto :goto_3

    .line 646
    :cond_4
    const/16 v3, 0x6e

    if-ne v6, v3, :cond_5

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 647
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 651
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 654
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 656
    :cond_8
    if-ne v3, p2, :cond_9

    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 659
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_3
.end method

.method public static escapeString(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v1, 0x0

    const/16 v7, 0x5c

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    if-eqz p0, :cond_0

    move v0, v1

    .line 599
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 612
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v1

    .line 601
    :goto_1
    if-eqz p1, :cond_2

    array-length v5, p1

    if-lt v2, v5, :cond_4

    .line 608
    :cond_2
    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_4
    aget-char v5, p1, v2

    if-ne v4, v5, :cond_5

    .line 603
    if-ne v4, v9, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 604
    :cond_6
    if-ne v4, v8, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x6e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 605
    :cond_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getBase64Code(Ljava/lang/String;)[B
    .locals 4
    .parameter

    .prologue
    .line 494
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/object/Base64;->encodeBase64([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBase64Code Throwable  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBase64CodeFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 513
    .line 514
    if-nez p0, :cond_0

    .line 527
    :goto_0
    return-object v1

    .line 517
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/object/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 519
    if-eqz v2, :cond_1

    .line 520
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 527
    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBase64Code Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p0, :cond_0

    move-object v0, v1

    .line 176
    :goto_0
    return-object v0

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 159
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 160
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 161
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 162
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 165
    if-nez v2, :cond_1

    move-object v0, v1

    .line 166
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 173
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getBookmarkPath(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 337
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    .line 340
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bookmark_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCalllogMapPath(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 328
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    .line 331
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_calllog_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContactMapPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 346
    if-nez p0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_contact_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContactMapPath_LoginedAccount(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 310
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_contact_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFeedbackURL()Ljava/lang/String;
    .locals 6

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LoginInformation;->isLogined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginKey()Ljava/lang/String;

    move-result-object v1

    .line 582
    :goto_0
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v2

    .line 585
    const/4 v3, 0x2

    const/4 v4, 0x0

    sget v5, Lcom/tencent/qqpim/dao/ConfigDao;->VERSION_BUILD:I

    invoke-static/range {v0 .. v5}, Lcom/tencent/tccsync/LoginUtil;->makeQQPimFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 586
    return-object v0

    .line 581
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 799
    .line 800
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 801
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 802
    return-object v0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 792
    .line 793
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 792
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 794
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 795
    return-object v0
.end method

.method public static getLCString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromString(Ljava/lang/String;C)Ljava/util/List;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 558
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 570
    :goto_0
    return-object v0

    .line 560
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 569
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v2

    .line 570
    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 564
    if-ne v3, p1, :cond_5

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getLocalStringFromTime(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 422
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 424
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    const-string v1, "getStandardStringFromTime exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 258
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 264
    :goto_1
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :goto_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getManufaturer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 766
    const-string v1, "UNKNOW"

    .line 767
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSDKVersion()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 771
    :try_start_0
    const-string v0, "com.tencent.qqphonebook.utils.OSPropertyUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqphonebook/utils/IOSProperty;

    .line 774
    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0}, Lcom/tencent/qqphonebook/utils/IOSProperty;->getManufaturer()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 783
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manufaturer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    return-object v0

    .line 779
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getMapDir(Z)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 296
    if-eqz p0, :cond_0

    .line 297
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->SDCARD_MAP_DIR:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    .line 301
    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->QQPIM_DB_DIR:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDBDir  DBDir = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMobileServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "http://jsync.3g.qq.com/android"

    return-object v0
.end method

.method public static getMobileSynServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getServerURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneType()Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;
    .locals 2

    .prologue
    .line 689
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->UNKNOWN:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    if-ne v0, v1, :cond_0

    .line 690
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->OPHONE:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    .line 698
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    return-object v0

    .line 692
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u8500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->HUAWEI_U8500:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    goto :goto_0

    .line 696
    :cond_2
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->GENERAL:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->phoneType:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    goto :goto_0
.end method

.method public static getReversePhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 668
    const/4 v0, 0x0

    .line 670
    if-eqz p0, :cond_0

    .line 671
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 672
    if-lez v1, :cond_0

    .line 673
    add-int/lit8 v0, v1, 0x1

    new-array v4, v0, [C

    .line 675
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    move v3, v0

    :goto_0
    if-gez v3, :cond_1

    .line 680
    if-lez v1, :cond_2

    .line 681
    invoke-static {v4, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_0
    :goto_1
    return-object v0

    .line 676
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 677
    const/16 v0, 0x30

    if-lt v5, v0, :cond_3

    const/16 v0, 0x39

    if-gt v5, v0, :cond_3

    .line 678
    add-int/lit8 v0, v1, 0x1

    aput-char v5, v4, v1

    .line 675
    :goto_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 682
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static getSDCardDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 2

    .prologue
    .line 744
    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSdcardSyncDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 806
    invoke-static {p0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 807
    if-nez v0, :cond_0

    .line 808
    const-string v0, "000000000000000"

    .line 810
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "COMMON:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSdcardUniqueMachineAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 206
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 207
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    const-string v0, "123456789012345"

    .line 210
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "COMN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->QQPIM_SERVER_URL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getServerURL  url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method public static getSmsMapPath(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 319
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v0

    .line 320
    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    .line 322
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sms_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringFromBase64Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 537
    const-string v1, ""

    .line 540
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/object/Base64;->decodeBase64([B)[B

    move-result-object v2

    .line 541
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-object v0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringFromBase64Code Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 544
    goto :goto_0
.end method

.method public static getUTCStringFromTime(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 395
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 396
    const-string v2, "GMT-0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 398
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 399
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 400
    const/16 v1, 0x10

    new-array v4, v1, [C

    move v2, v0

    move v1, v0

    .line 402
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 409
    const/16 v0, 0x5a

    aput-char v0, v4, v1

    .line 411
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_1
    return-object v0

    .line 403
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 404
    const/16 v0, 0x20

    if-ne v5, v0, :cond_1

    .line 405
    add-int/lit8 v0, v1, 0x1

    const/16 v5, 0x54

    aput-char v5, v4, v1

    .line 402
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 406
    :cond_1
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_2

    const/16 v0, 0x3a

    if-eq v5, v0, :cond_2

    .line 407
    add-int/lit8 v0, v1, 0x1

    aput-char v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 413
    :catch_0
    move-exception v0

    .line 414
    const-string v1, "getStringFromTime exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static getUTCTimeFromString(Ljava/lang/String;)J
    .locals 9
    .parameter

    .prologue
    .line 441
    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [C

    .line 445
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 446
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 448
    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 449
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 451
    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 452
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 454
    const/16 v4, 0x9

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 455
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 457
    const/16 v5, 0xb

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v0, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 458
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v0, v5, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 460
    const/16 v6, 0xd

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v0, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 461
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v0, v6, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 463
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v2, -0x1

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 465
    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 477
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 485
    :goto_0
    return-wide v0

    .line 479
    :catch_0
    move-exception v0

    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeFromString NullPointerException strTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 482
    :catch_1
    move-exception v0

    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeFromString IndexOutOfBoundsException strTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getUniqueMachineAppID(Z)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 187
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSdcardUniqueMachineAppID()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUniqueMachineAppID  getUniqueMachineAppID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSDKVersionBelow2()Z
    .locals 2

    .prologue
    .line 754
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDKVersionLargerOrEquals2_2()Z
    .locals 2

    .prologue
    .line 762
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openBrower(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 814
    if-nez p0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 817
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 820
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 822
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 823
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static timeStrTrans(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 707
    if-nez p0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-object p0

    .line 710
    :cond_1
    :try_start_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 711
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 713
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 714
    :cond_2
    const-string v0, "\u5e74"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    const-string v0, "\u6708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 715
    const-string v0, "\u65e5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 716
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 718
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 722
    :cond_3
    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 724
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 725
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    return-void
.end method

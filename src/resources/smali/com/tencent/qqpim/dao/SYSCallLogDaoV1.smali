.class public Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;
.super Lcom/tencent/qqpim/dao/SYSCallLogDao;
.source "SourceFile"


# static fields
.field private static sysBookmarkDaoV1:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;


# instance fields
.field private HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

.field context:Landroid/content/Context;

.field private htcRawContactIDColumnExist:Z

.field model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->sysBookmarkDaoV1:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSCallLogDao;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    .line 54
    sget-object v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;->GENERIC:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    .line 61
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->initHTCExtentedColumn()V

    .line 62
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->checkHTCExtendedColumn()V

    .line 63
    iput-object p1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->context:Landroid/content/Context;

    .line 64
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;->OPHONE:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;

    .line 66
    :cond_0
    return-void
.end method

.method private checkHTCExtendedColumn()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 89
    .line 91
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    .line 92
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 100
    :cond_2
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    .line 104
    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_3
    throw v0

    .line 103
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 102
    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;
    .locals 1
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initHTCExtentedColumn()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "person"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "raw_contact_id"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
    .locals 15
    .parameter

    .prologue
    .line 278
    const-string v0, "SYSCallLogDao"

    const-string v1, "add enter "

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    .line 282
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 283
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 284
    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    .line 285
    const/4 v1, 0x0

    .line 286
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    if-nez v4, :cond_3

    const-string v0, "number"

    const-string v1, "-1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    if-nez v7, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_4

    cmp-long v0, v2, v5

    if-gez v0, :cond_4

    .line 341
    const-string v0, "duration"

    sub-long v1, v5, v2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    :cond_4
    const/4 v0, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 349
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 354
    :goto_2
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add leave strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v10

    .line 288
    if-eqz v10, :cond_2

    .line 290
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "TEL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "number"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v1, 0x1

    move-wide v11, v2

    move v3, v1

    move-wide v1, v11

    .line 322
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "ENDTIME"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 323
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v4

    move v6, v7

    .line 335
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    move v7, v6

    move-wide v11, v4

    move-wide v5, v11

    move v4, v3

    move-wide v13, v1

    move-wide v2, v13

    move-object v1, v0

    goto/16 :goto_1

    .line 294
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "N"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 298
    if-eqz v0, :cond_7

    .line 299
    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 301
    iget-object v8, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_7
    const/4 v8, 0x0

    .line 307
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    .line 308
    check-cast v0, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 309
    if-eqz v0, :cond_11

    .line 310
    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 314
    :cond_8
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_9
    const-string v8, "name"

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-wide v11, v2

    move-wide v1, v11

    move v3, v4

    goto :goto_3

    .line 319
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "STARTTIME"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v2

    .line 321
    const-string v0, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b
    move-object v0, v1

    move-wide v11, v2

    move-wide v1, v11

    move v3, v4

    goto/16 :goto_3

    .line 324
    :cond_c
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "DURATION"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 325
    const/4 v4, 0x1

    .line 326
    const-string v7, "duration"

    const/4 v8, 0x2

    invoke-virtual {v10, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v5

    move v6, v4

    move-wide v4, v11

    goto/16 :goto_4

    .line 327
    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "CALLTYPE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 328
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "INCOMING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 329
    const-string v4, "type"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide v11, v5

    move-wide v4, v11

    move v6, v7

    goto/16 :goto_4

    .line 330
    :cond_e
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "OUTGOING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 331
    const-string v4, "type"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide v11, v5

    move-wide v4, v11

    move v6, v7

    goto/16 :goto_4

    .line 332
    :cond_f
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "MISS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 333
    const-string v4, "type"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    move-wide v11, v5

    move-wide v4, v11

    move v6, v7

    goto/16 :goto_4

    .line 350
    :catch_0
    move-exception v1

    .line 351
    const-string v2, "SYSCallLogDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move-object v0, v8

    goto/16 :goto_5
.end method

.method public add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 477
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 486
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    if-nez v0, :cond_1

    .line 481
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    .line 477
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 484
    :cond_1
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 429
    const-string v1, "SYSCallLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete enter strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 435
    const-string v3, "_id=?"

    .line 436
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 434
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 441
    :goto_0
    const-string v1, "SYSCallLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete leave delcount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    if-lez v0, :cond_0

    .line 444
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    .line 446
    :goto_1
    return-object v0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    const-string v2, "SYSCallLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_0
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_1
.end method

.method public getAllEntityId([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 142
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 145
    const-string v0, "SYSCallLogDao"

    const-string v1, "getAllEntityId enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 149
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    .line 147
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    move v0, v7

    .line 151
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-lt v0, v2, :cond_2

    .line 161
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    :goto_1
    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAllEntityId leave size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v8

    .line 152
    :cond_2
    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 153
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 157
    :goto_2
    :try_start_3
    const-string v2, "SYSCallLogDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllEntityId  IllegalArgumentException  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    :goto_3
    :try_start_4
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_3
    throw v0

    .line 160
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 158
    :catch_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 156
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 110
    const-string v0, "SYSCallLogDao"

    const-string v1, "isExisted enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v6, 0x0

    .line 115
    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_3

    const/4 v6, 0x1

    move v0, v6

    .line 121
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_0
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted  ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_1
    const-string v1, "SYSCallLogDao"

    const-string v2, "isExisted leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v0

    .line 118
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 119
    :goto_2
    :try_start_2
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted  IllegalArgumentException strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_1
    const-string v0, "SYSCallLogDao"

    const-string v1, "isExisted  ret = false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    :goto_3
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted  ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    throw v0

    .line 120
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    .line 118
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 170
    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query enter  strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_4

    .line 176
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 177
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "duration"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 185
    new-instance v1, Lcom/tencent/qqpim/object/SYSCallLog;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/SYSCallLog;-><init>()V

    .line 187
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/object/SYSCallLog;->setId(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    if-eqz v4, :cond_0

    const-string v0, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 197
    const/4 v2, 0x0

    const-string v5, "TEL"

    invoke-virtual {v0, v2, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 198
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 199
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_5

    .line 205
    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v2

    .line 207
    invoke-interface {v2, v0}, Lcom/tencent/qqpim/interfaces/IDao;->queryNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 218
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 219
    const/4 v4, 0x0

    const-string v5, "N"

    invoke-virtual {v2, v4, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 220
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 225
    :cond_1
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 226
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 227
    const/4 v4, 0x0

    const-string v5, "CALLTYPE"

    invoke-virtual {v2, v4, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 228
    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_2
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 246
    const/4 v2, 0x0

    const-string v4, "STARTTIME"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 247
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v2

    .line 248
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 249
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 251
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 252
    const/4 v2, 0x0

    const-string v4, "DURATION"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 253
    const/4 v2, 0x2

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 256
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 257
    const/4 v2, 0x0

    const-string v4, "ENDTIME"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 258
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v2

    .line 259
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 260
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 262
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_3
    const-string v0, "SYSCallLogDao"

    const-string v2, "query leave"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 271
    :goto_3
    return-object v0

    .line 180
    :cond_4
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 181
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "duration"

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v0

    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query IllegalArgumentException strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 268
    goto :goto_3

    .line 209
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;

    sget-object v5, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;->OPHONE:Lcom/tencent/qqpim/dao/SYSCallLogDaoV1$Model;

    if-ne v0, v5, :cond_7

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 212
    if-eqz v0, :cond_7

    .line 213
    invoke-interface {v0, v4}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 230
    :pswitch_0
    const/4 v0, 0x2

    const-string v4, "INCOMING"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 231
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 270
    :catch_1
    move-exception v0

    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query Throwable strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 271
    goto :goto_3

    .line 234
    :pswitch_1
    const/4 v0, 0x2

    :try_start_2
    const-string v4, "OUTGOING"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 235
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    goto/16 :goto_2

    .line 238
    :pswitch_2
    const/4 v0, 0x2

    const-string v4, "MISS"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 239
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public query()Ljava/util/List;
    .locals 4

    .prologue
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->getAllEntityId([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 134
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 137
    return-object v2

    .line 135
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryNumber()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    .line 458
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 457
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 461
    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 14
    .parameter

    .prologue
    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    .line 361
    const-string v0, "SYSCallLogDao"

    const-string v1, "update enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    .line 422
    :goto_0
    return-object v0

    .line 368
    :cond_1
    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update  strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 375
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-wide v0, v7

    move-wide v2, v7

    move v6, v4

    .line 376
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 405
    if-nez v6, :cond_3

    const-string v5, "number"

    const-string v6, "-1"

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_3
    if-nez v4, :cond_4

    cmp-long v4, v2, v7

    if-eqz v4, :cond_4

    cmp-long v4, v0, v7

    if-eqz v4, :cond_4

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 408
    const-string v4, "duration"

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 412
    if-lez v0, :cond_e

    .line 413
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    .line 377
    :cond_5
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v11

    .line 378
    if-eqz v11, :cond_2

    .line 380
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TEL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 381
    const-string v6, "number"

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 402
    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v0

    const-string v0, "SYSCallLogDao"

    const-string v1, "update IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    .line 384
    :cond_7
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "N"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 385
    const-string v12, "name"

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 386
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "STARTTIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 387
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v2

    .line 388
    const-string v11, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 389
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ENDTIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 390
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 391
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "DURATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 393
    const-string v4, "duration"

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_2

    .line 394
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CALLTYPE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 395
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "INCOMING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 396
    const-string v11, "type"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 397
    :cond_c
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "OUTGOING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 398
    const-string v11, "type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 399
    :cond_d
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OUTGOING"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 400
    const-string v11, "type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 416
    :cond_e
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

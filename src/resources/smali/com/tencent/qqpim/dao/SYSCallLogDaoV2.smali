.class public Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;
.super Lcom/tencent/qqpim/dao/SYSCallLogDao;
.source "SourceFile"


# instance fields
.field private HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

.field context:Landroid/content/Context;

.field private htcRawContactIDColumnExist:Z

.field model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSCallLogDao;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    .line 60
    sget-object v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;->GENERIC:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    .line 67
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->initHTCExtentedColumn()V

    .line 68
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->checkHTCExtendedColumn()V

    .line 69
    iput-object p1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    .line 70
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;->OPHONE:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;

    .line 72
    :cond_0
    return-void
.end method

.method private checkHTCExtendedColumn()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    .line 98
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z

    .line 99
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 105
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 107
    :cond_2
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    .line 111
    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_3
    throw v0

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 109
    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;
    .locals 1
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getOperationFromEntity(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/ArrayList;)Z
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 535
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 598
    :goto_0
    return v1

    .line 537
    :cond_1
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 538
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 539
    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    .line 540
    const/4 v2, 0x0

    .line 541
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 593
    if-nez v5, :cond_3

    const-string v1, "number"

    const-string v2, "-1"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    :cond_3
    if-nez v8, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-eqz v1, :cond_4

    cmp-long v1, v3, v6

    if-gez v1, :cond_4

    .line 596
    const-string v1, "duration"

    sub-long v2, v6, v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 598
    :cond_4
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 542
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v11

    .line 543
    if-eqz v11, :cond_2

    .line 545
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "TEL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 546
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    const-string v2, "number"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 548
    const/4 v2, 0x1

    move-wide v12, v3

    move v4, v2

    move-wide v2, v12

    .line 577
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "ENDTIME"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 578
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v5

    move v7, v8

    .line 590
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    move v8, v7

    move-wide v12, v5

    move-wide v6, v12

    move v5, v4

    move-wide v14, v2

    move-wide v3, v14

    move-object v2, v1

    goto :goto_1

    .line 549
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "N"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 551
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z

    if-eqz v1, :cond_7

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 553
    if-eqz v1, :cond_7

    .line 554
    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 556
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    :cond_7
    const/4 v9, 0x0

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v1

    .line 563
    check-cast v1, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 564
    if-eqz v1, :cond_11

    .line 565
    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9

    .line 569
    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    :cond_9
    const-string v9, "name"

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-object v1, v2

    move-wide v12, v3

    move-wide v2, v12

    move v4, v5

    goto :goto_2

    .line 574
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "STARTTIME"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 575
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v3

    .line 576
    const-string v1, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_b
    move-object v1, v2

    move-wide v12, v3

    move-wide v2, v12

    move v4, v5

    goto/16 :goto_2

    .line 579
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "DURATION"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 580
    const/4 v5, 0x1

    .line 581
    const-string v8, "duration"

    const/4 v9, 0x2

    invoke-virtual {v11, v9}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-wide v12, v6

    move v7, v5

    move-wide v5, v12

    goto/16 :goto_3

    .line 582
    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "CALLTYPE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 583
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "INCOMING"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 584
    const-string v5, "type"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-wide v12, v6

    move-wide v5, v12

    move v7, v8

    goto/16 :goto_3

    .line 585
    :cond_e
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "OUTGOING"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 586
    const-string v5, "type"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-wide v12, v6

    move-wide v5, v12

    move v7, v8

    goto/16 :goto_3

    .line 587
    :cond_f
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "MISS"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 588
    const-string v5, "type"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_10
    move-wide v12, v6

    move-wide v5, v12

    move v7, v8

    goto/16 :goto_3

    :cond_11
    move-object v1, v9

    goto/16 :goto_4
.end method

.method private initHTCExtentedColumn()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "person"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "raw_contact_id"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
    .locals 15
    .parameter

    .prologue
    .line 285
    const-string v0, "SYSCallLogDao"

    const-string v1, "add enter "

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    .line 289
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 290
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 291
    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    .line 292
    const/4 v1, 0x0

    .line 293
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 345
    if-nez v4, :cond_3

    const-string v0, "number"

    const-string v1, "-1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
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

    .line 348
    const-string v0, "duration"

    sub-long v1, v5, v2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    :cond_4
    const/4 v0, 0x0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 355
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 356
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
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

    .line 294
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v10

    .line 295
    if-eqz v10, :cond_2

    .line 297
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "TEL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "number"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x1

    move-wide v11, v2

    move v3, v1

    move-wide v1, v11

    .line 329
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "ENDTIME"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 330
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v4

    move v6, v7

    .line 342
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

    .line 301
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "N"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 303
    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 305
    if-eqz v0, :cond_7

    .line 306
    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 308
    iget-object v8, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_7
    const/4 v8, 0x0

    .line 314
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    .line 315
    check-cast v0, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 316
    if-eqz v0, :cond_11

    .line 317
    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 321
    :cond_8
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_9
    const-string v8, "name"

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-wide v11, v2

    move-wide v1, v11

    move v3, v4

    goto :goto_3

    .line 326
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "STARTTIME"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 327
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v2

    .line 328
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

    .line 331
    :cond_c
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "DURATION"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 332
    const/4 v4, 0x1

    .line 333
    const-string v7, "duration"

    const/4 v8, 0x2

    invoke-virtual {v10, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v5

    move v6, v4

    move-wide v4, v11

    goto/16 :goto_4

    .line 334
    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "CALLTYPE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 335
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "INCOMING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 336
    const-string v4, "type"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide v11, v5

    move-wide v4, v11

    move v6, v7

    goto/16 :goto_4

    .line 337
    :cond_e
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "OUTGOING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 338
    const-string v4, "type"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide v11, v5

    move-wide v4, v11

    move v6, v7

    goto/16 :goto_4

    .line 339
    :cond_f
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "MISS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 340
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

    .line 357
    :catch_0
    move-exception v1

    .line 358
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
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 485
    :goto_0
    if-lt v3, v5, :cond_0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "call_log"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move v0, v2

    .line 504
    :goto_1
    if-lt v0, v5, :cond_1

    move v0, v1

    .line 529
    :goto_2
    return v0

    .line 486
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IEntity;

    invoke-direct {p0, v0, v4}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/ArrayList;)Z

    .line 485
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move v0, v2

    .line 496
    goto :goto_2

    .line 497
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move v0, v2

    .line 499
    goto :goto_2

    .line 505
    :cond_1
    aget-object v3, v6, v0

    iget-object v4, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 507
    const-string v3, "-1"

    .line 509
    :try_start_1
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    move v4, v1

    .line 514
    :goto_3
    if-eqz v4, :cond_2

    .line 515
    sget-object v4, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v4

    aput v4, p3, v0

    .line 523
    :goto_4
    :try_start_2
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 504
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    :catch_2
    move-exception v4

    move v4, v2

    goto :goto_3

    .line 519
    :cond_2
    sget-object v4, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v4

    aput v4, p3, v0

    goto :goto_4

    .line 526
    :catch_3
    move-exception v3

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p3, v0

    goto :goto_5
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 436
    const-string v1, "SYSCallLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete enter strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 442
    const-string v3, "_id=?"

    .line 443
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 441
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 448
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

    .line 450
    if-lez v0, :cond_0

    .line 451
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    .line 453
    :goto_1
    return-object v0

    .line 444
    :catch_0
    move-exception v1

    .line 445
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

    .line 453
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

    .line 149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const-string v0, "SYSCallLogDao"

    const-string v1, "getAllEntityId enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 156
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    .line 154
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    move v0, v7

    .line 158
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-lt v0, v2, :cond_2

    .line 168
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
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

    .line 172
    return-object v8

    .line 159
    :cond_2
    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 160
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

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 164
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

    .line 168
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 165
    :catch_1
    move-exception v0

    .line 166
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

    .line 168
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_3
    throw v0

    .line 167
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 165
    :catch_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 163
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 117
    const-string v0, "SYSCallLogDao"

    const-string v1, "isExisted enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v6, 0x0

    .line 122
    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
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

    .line 128
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
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

    .line 131
    :goto_1
    const-string v1, "SYSCallLogDao"

    const-string v2, "isExisted leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v0

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 126
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

    .line 128
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    const-string v0, "SYSCallLogDao"

    const-string v1, "isExisted  ret = false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    :goto_3
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 129
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

    .line 130
    throw v0

    .line 127
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    .line 125
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

    .line 177
    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query enter  strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 182
    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_4

    .line 183
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 184
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "duration"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->HTC_EXTENDED_COLUMN_NAME:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 192
    new-instance v1, Lcom/tencent/qqpim/object/SYSCallLog;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/SYSCallLog;-><init>()V

    .line 194
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/object/SYSCallLog;->setId(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    if-eqz v4, :cond_0

    const-string v0, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 204
    const/4 v2, 0x0

    const-string v5, "TEL"

    invoke-virtual {v0, v2, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 205
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_5

    .line 212
    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v2

    .line 214
    invoke-interface {v2, v0}, Lcom/tencent/qqpim/interfaces/IDao;->queryNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 225
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 226
    const/4 v4, 0x0

    const-string v5, "N"

    invoke-virtual {v2, v4, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 227
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 228
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 232
    :cond_1
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 233
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 234
    const/4 v4, 0x0

    const-string v5, "CALLTYPE"

    invoke-virtual {v2, v4, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 235
    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_2
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 253
    const/4 v2, 0x0

    const-string v4, "STARTTIME"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 254
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v2

    .line 255
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 258
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 259
    const/4 v2, 0x0

    const-string v4, "DURATION"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 260
    const/4 v2, 0x2

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 261
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 263
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    .line 264
    const/4 v2, 0x0

    const-string v4, "ENDTIME"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 265
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

    .line 266
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 267
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    .line 269
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_3
    const-string v0, "SYSCallLogDao"

    const-string v2, "query leave"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 278
    :goto_3
    return-object v0

    .line 187
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

    .line 188
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

    .line 274
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

    .line 275
    goto :goto_3

    .line 216
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->model:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;

    sget-object v5, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;->OPHONE:Lcom/tencent/qqpim/dao/SYSCallLogDaoV2$Model;

    if-ne v0, v5, :cond_7

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IPhoneLookup;

    .line 219
    if-eqz v0, :cond_7

    .line 220
    invoke-interface {v0, v4}, Lcom/tencent/qqpim/interfaces/IPhoneLookup;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 237
    :pswitch_0
    const/4 v0, 0x2

    const-string v4, "INCOMING"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 238
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 277
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

    .line 278
    goto :goto_3

    .line 241
    :pswitch_1
    const/4 v0, 0x2

    :try_start_2
    const-string v4, "OUTGOING"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 242
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V

    goto/16 :goto_2

    .line 245
    :pswitch_2
    const/4 v0, 0x2

    const-string v4, "MISS"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    .line 246
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/object/SYSCallLog;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_1

    .line 235
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
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->getAllEntityId([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 144
    return-object v2

    .line 142
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryNumber()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 464
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    .line 465
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 464
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 468
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

    .line 368
    const-string v0, "SYSCallLogDao"

    const-string v1, "update enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    .line 429
    :goto_0
    return-object v0

    .line 375
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

    .line 378
    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 382
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-wide v0, v7

    move-wide v2, v7

    move v6, v4

    .line 383
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 412
    if-nez v6, :cond_3

    const-string v5, "number"

    const-string v6, "-1"

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_3
    if-nez v4, :cond_4

    cmp-long v4, v2, v7

    if-eqz v4, :cond_4

    cmp-long v4, v0, v7

    if-eqz v4, :cond_4

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 415
    const-string v4, "duration"

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 419
    if-lez v0, :cond_e

    .line 420
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    .line 384
    :cond_5
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v11

    .line 385
    if-eqz v11, :cond_2

    .line 387
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TEL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 388
    const-string v6, "number"

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 409
    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 428
    :catch_0
    move-exception v0

    const-string v0, "SYSCallLogDao"

    const-string v1, "update IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    .line 391
    :cond_7
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "N"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 392
    const-string v12, "name"

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 393
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "STARTTIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 394
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v2

    .line 395
    const-string v11, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 396
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ENDTIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 397
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 398
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "DURATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 400
    const-string v4, "duration"

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_2

    .line 401
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CALLTYPE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 402
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "INCOMING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 403
    const-string v11, "type"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 404
    :cond_c
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "OUTGOING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 405
    const-string v11, "type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 406
    :cond_d
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OUTGOING"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 407
    const-string v11, "type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 423
    :cond_e
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

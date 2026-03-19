.class Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;
.super Landroid/os/Handler;


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_canceled:Z

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V
    .locals 22

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move/from16 v1, p7

    const-string v15, "Error closing stream"

    iget-boolean v2, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-nez v2, :cond_9

    if-eqz v14, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_18

    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, " to "

    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v4, "Unity Ads cache: resuming download "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v4, "Unity Ads cache: start downloading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->isActiveNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/splash/services/core/cache/CacheError;

    filled-new-array {v3, v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v16, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {v9, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v4, p6

    :try_start_2
    invoke-direct {v13, v14, v0, v1, v4}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/splash/services/core/request/WebRequest;

    move-result-object v0

    iput-object v0, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    new-instance v1, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;

    move/from16 v4, p5

    invoke-direct {v1, v13, v5, v4}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/request/WebRequest;->setProgressListener(Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;)V

    iget-object v0, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0, v9}, Lcom/unity3d/splash/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    move-result-wide v6

    iput-boolean v8, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    iget-object v0, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getContentLength()J

    move-result-wide v17

    iget-object v0, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->isCanceled()Z

    move-result v0

    iget-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseCode()I

    move-result v19

    iget-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v20
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v21, v9

    move-wide/from16 v8, v17

    move-object v14, v10

    move v10, v0

    move/from16 v11, v19

    move/from16 v17, v12

    move-object/from16 v12, v20

    :try_start_3
    invoke-direct/range {v1 .. v12}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v14, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    move-object v1, v14

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    move-object v1, v14

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    move-object v1, v14

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    move-object v1, v14

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v5, p1

    move-object v1, v14

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v5, p1

    move-object v1, v14

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v21, v9

    move-object v1, v10

    move-object v5, v14

    :goto_1
    move-object v2, v0

    move-object/from16 v10, v21

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object/from16 v21, v9

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_2
    move-object/from16 v10, v21

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v21, v9

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_3
    move-object/from16 v10, v21

    goto :goto_7

    :catch_8
    move-exception v0

    move-object/from16 v21, v9

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_4
    move-object/from16 v10, v21

    goto :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v21, v9

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_5
    move-object/from16 v10, v21

    goto :goto_9

    :catch_a
    move-exception v0

    move-object/from16 v21, v9

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_6
    move-object/from16 v10, v21

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_7
    const/4 v2, 0x0

    const/4 v7, 0x3

    goto/16 :goto_e

    :catch_c
    move-exception v0

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_8
    const/4 v2, 0x0

    const/4 v7, 0x3

    goto/16 :goto_10

    :catch_d
    move-exception v0

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_9
    const/4 v2, 0x0

    const/4 v7, 0x3

    goto/16 :goto_12

    :catch_e
    move-exception v0

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_a
    const/4 v2, 0x0

    const/4 v7, 0x3

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v10

    move-object v5, v14

    :goto_b
    move-object v2, v0

    goto/16 :goto_16

    :catch_f
    move-exception v0

    move-object v1, v10

    move/from16 v17, v12

    move-object v5, v14

    :goto_c
    :try_start_5
    const-string v2, "Network error"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v8, v7, v2

    aput-object v5, v7, v17

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v16

    invoke-virtual {v3, v4, v6, v7}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iput-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v10, :cond_3

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3
    :goto_d
    return-void

    :catch_11
    move-exception v0

    move v2, v8

    move-object v1, v10

    move v7, v11

    move/from16 v17, v12

    move-object v5, v14

    :goto_e
    :try_start_7
    const-string v3, "Illegal state"

    invoke-static {v3, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v2, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v8, v7, v2

    aput-object v5, v7, v17

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v16

    invoke-virtual {v3, v4, v6, v7}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iput-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v10, :cond_4

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    goto :goto_f

    :catch_12
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_4
    :goto_f
    return-void

    :catch_13
    move-exception v0

    move v2, v8

    move-object v1, v10

    move v7, v11

    move/from16 v17, v12

    move-object v5, v14

    :goto_10
    :try_start_9
    const-string v3, "Couldn\'t request stream"

    invoke-static {v3, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v2, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v8, v7, v2

    aput-object v5, v7, v17

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v16

    invoke-virtual {v3, v4, v6, v7}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iput-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v10, :cond_5

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14

    goto :goto_11

    :catch_14
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_5
    :goto_11
    return-void

    :catch_15
    move-exception v0

    move v2, v8

    move-object v1, v10

    move v7, v11

    move/from16 v17, v12

    move-object v5, v14

    :goto_12
    :try_start_b
    const-string v3, "Malformed URL"

    invoke-static {v3, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v2, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v8, v7, v2

    aput-object v5, v7, v17

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v16

    invoke-virtual {v3, v4, v6, v7}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    iput-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v10, :cond_6

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_16

    goto :goto_13

    :catch_16
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_6
    :goto_13
    return-void

    :catch_17
    move-exception v0

    move v2, v8

    move-object v1, v10

    move v7, v11

    move/from16 v17, v12

    move-object v5, v14

    :goto_14
    :try_start_d
    const-string v3, "Couldn\'t create target file"

    invoke-static {v3, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v2, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v8, v7, v2

    aput-object v5, v7, v17

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v16

    invoke-virtual {v3, v4, v6, v7}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    iput-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v10, :cond_7

    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_18

    goto :goto_15

    :catch_18
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_7
    :goto_15
    return-void

    :catchall_3
    move-exception v0

    goto/16 :goto_b

    :goto_16
    iput-object v1, v13, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v10, :cond_8

    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19

    goto :goto_17

    :catch_19
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v6, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_8
    :goto_17
    throw v2

    :cond_9
    :goto_18
    return-void
.end method

.method private getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/splash/services/core/request/WebRequest;
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    new-instance p4, Lcom/unity3d/splash/services/core/request/WebRequest;

    const-string v2, "GET"

    move-object v0, p4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object p4
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Unity Ads cache: could not set file readable!"

    invoke-static {p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    if-nez p9, :cond_1

    const-string p2, "Unity Ads cache: File "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes downloaded in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object p2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object p4, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p8

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-static {p11}, Lcom/unity3d/splash/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p10

    move-object p5, p3

    filled-new-array/range {p5 .. p10}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string p2, "Unity Ads cache: downloading of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " stopped"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object p2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object p4, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p8

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-static {p11}, Lcom/unity3d/splash/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p10

    move-object p5, p3

    filled-new-array/range {p5 .. p10}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "connectTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "readTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "progressInterval"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "append"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "There are headers left in data, reading them"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v8, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v8, v0

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-nez v9, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    sget-object v5, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/splash/services/core/cache/CacheError;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v5, v3, v4, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V

    :goto_2
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    return v0
.end method

.method public setCancelStatus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/request/WebRequest;->cancel()V

    :cond_0
    return-void
.end method

.class public Lcom/aptoide/sdk/core/analytics/AnalyticsManagerProvider;
.super Ljava/lang/Object;
.source "AnalyticsManagerProvider.java"


# static fields
.field private static analyticsManagerInstance:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideAnalyticsManager()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;
    .locals 4

    .line 30
    sget-object v0, Lcom/aptoide/sdk/core/analytics/AnalyticsManagerProvider;->analyticsManagerInstance:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;

    .line 32
    sget-object v1, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    .line 34
    new-instance v2, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;

    invoke-direct {v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;-><init>()V

    .line 35
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/AnalyticsManagerProvider;->provideIndicativeEventList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->addLogger(Lcom/aptoide/sdk/core/analytics/manager/EventLogger;Ljava/util/Collection;)Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/AnalyticsManagerProvider;->provideIndicativeEventList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->addLogger(Lcom/aptoide/sdk/core/analytics/manager/EventLogger;Ljava/util/Collection;)Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/aptoide/sdk/core/analytics/KeysNormalizer;

    invoke-direct {v1}, Lcom/aptoide/sdk/core/analytics/KeysNormalizer;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->setAnalyticsNormalizer(Lcom/aptoide/sdk/core/analytics/manager/KeyValueNormalizer;)Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->build()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/AnalyticsManagerProvider;->analyticsManagerInstance:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    .line 40
    :cond_0
    sget-object v0, Lcom/aptoide/sdk/core/analytics/AnalyticsManagerProvider;->analyticsManagerInstance:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    return-object v0
.end method

.method private static provideIndicativeEventList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "sdk_app_update_available_request"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_app_update_available_result"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_app_update_available_main_thread_failure"

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_app_update_available_failure_to_obtain_result"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_call_backend_request"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_call_backend_response"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_call_backend_mapping_failure"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_call_backend_error"

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_consume_purchase_request"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_consume_purchase_result"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_unexpected_failure"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_purchase_signature_verification_failure"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_service_connection_exception"

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_referral_deeplink_request"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_referral_deeplink_result"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_referral_deeplink_main_thread_failure"

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_attribution_request"

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_attribution_result"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_attribution_request_failure"

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_attribution_retry_attempt"

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_payflow_request"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_payflow_result"

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_start_connection"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_service_connected"

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_service_connection_failed"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_finish_connection"

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_app_installation_trigger"

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_install_wallet_dialog"

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_install_wallet_dialog_action"

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_install_wallet_dialog_download_wallet_vanilla"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_install_wallet_dialog_download_wallet_fallback"

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_install_wallet_dialog_success"

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_is_feature_supported_request"

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_is_feature_supported_result"

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_app_update_dialog_request"

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_app_update_dialog_action"

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_app_update_store_request"

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_app_update_result"

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_app_update_deeplink_failure"

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_purchase"

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_purchase_result"

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_purchase_main_thread_failure"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_launch_purchase_type_not_supported_failure"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_query_puchases_request"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_query_purchases_result"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_query_purchases_type_not_supported_error"

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_query_sku_details_request"

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_query_sku_details_result"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_query_sku_details_failure_on_parsing_skus"

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_wallet_payment_start"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_wallet_payment_empty_data"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_start"

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_open_deeplink"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_failure_to_open_deeplink"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_failure_to_obtain_url"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_allow_external_apps"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_launch_external_payment"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_external_payment_result"

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_wallet_payment_result"

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_execute_external_deeplink"

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_error_processing_purchase_result"

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sdk_web_payment_purchase_result_empty"

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

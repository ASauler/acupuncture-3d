package com.rnappauth;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.customtabs.TrustedWebUtils;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.WritableMap;
import com.rnappauth.utils.CustomConnectionBuilder;
import com.rnappauth.utils.EndSessionResponseFactory;
import com.rnappauth.utils.MapUtil;
import com.rnappauth.utils.MutableBrowserAllowList;
import com.rnappauth.utils.RegistrationResponseFactory;
import com.rnappauth.utils.TokenResponseFactory;
import com.rnappauth.utils.UnsafeConnectionBuilder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import net.openid.appauth.AppAuthConfiguration;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationRequest;
import net.openid.appauth.AuthorizationResponse;
import net.openid.appauth.AuthorizationService;
import net.openid.appauth.AuthorizationServiceConfiguration;
import net.openid.appauth.ClientAuthentication;
import net.openid.appauth.ClientSecretBasic;
import net.openid.appauth.ClientSecretPost;
import net.openid.appauth.CodeVerifierUtil;
import net.openid.appauth.EndSessionRequest;
import net.openid.appauth.EndSessionResponse;
import net.openid.appauth.RegistrationRequest;
import net.openid.appauth.RegistrationResponse;
import net.openid.appauth.ResponseTypeValues;
import net.openid.appauth.TokenRequest;
import net.openid.appauth.TokenResponse;
import net.openid.appauth.browser.AnyBrowserMatcher;
import net.openid.appauth.browser.BrowserMatcher;
import net.openid.appauth.browser.VersionedBrowserMatcher;
import net.openid.appauth.connectivity.ConnectionBuilder;
import net.openid.appauth.connectivity.DefaultConnectionBuilder;

/* JADX INFO: loaded from: classes2.dex */
public class RNAppAuthModule extends ReactContextBaseJavaModule implements ActivityEventListener {
    public static final String CUSTOM_TAB_PACKAGE_NAME = "com.android.chrome";
    private Map<String, String> additionalParametersMap;
    private Map<String, String> authorizationRequestHeaders;
    private String clientAuthMethod;
    private String clientSecret;
    private String codeVerifier;
    private boolean dangerouslyAllowInsecureHttpRequests;
    private boolean isPrefetched;
    private final ConcurrentHashMap<String, AuthorizationServiceConfiguration> mServiceConfigurations;
    private Promise promise;
    private final ReactApplicationContext reactContext;
    private Map<String, String> registrationRequestHeaders;
    private Boolean skipCodeExchange;
    private Map<String, String> tokenRequestHeaders;
    private Boolean useNonce;
    private Boolean usePKCE;

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNAppAuth";
    }

    @Override // com.facebook.react.bridge.ActivityEventListener
    public void onNewIntent(Intent intent) {
    }

    public RNAppAuthModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.clientAuthMethod = "basic";
        this.registrationRequestHeaders = null;
        this.authorizationRequestHeaders = null;
        this.tokenRequestHeaders = null;
        this.mServiceConfigurations = new ConcurrentHashMap<>();
        this.isPrefetched = false;
        this.reactContext = reactApplicationContext;
        reactApplicationContext.addActivityEventListener(this);
    }

    @ReactMethod
    public void prefetchConfiguration(Boolean bool, final String str, String str2, String str3, ReadableArray readableArray, ReadableMap readableMap, boolean z, ReadableMap readableMap2, Double d, final Promise promise) {
        if (bool.booleanValue()) {
            warmChromeCustomTab(this.reactContext, str);
        }
        parseHeaderMap(readableMap2);
        ConnectionBuilder connectionBuilderCreateConnectionBuilder = createConnectionBuilder(z, this.authorizationRequestHeaders, d);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (!this.isPrefetched) {
            if (readableMap != null && !hasServiceConfiguration(str)) {
                try {
                    setServiceConfiguration(str, createAuthorizationServiceConfiguration(readableMap));
                    this.isPrefetched = true;
                    countDownLatch.countDown();
                } catch (Exception e) {
                    promise.reject("configuration_error", "Failed to convert serviceConfiguration", e);
                }
            } else if (!hasServiceConfiguration(str)) {
                AuthorizationServiceConfiguration.fetchFromUrl(buildConfigurationUriFromIssuer(Uri.parse(str)), new AuthorizationServiceConfiguration.RetrieveConfigurationCallback() { // from class: com.rnappauth.RNAppAuthModule.1
                    @Override // net.openid.appauth.AuthorizationServiceConfiguration.RetrieveConfigurationCallback
                    public void onFetchConfigurationCompleted(AuthorizationServiceConfiguration authorizationServiceConfiguration, AuthorizationException authorizationException) {
                        if (authorizationException != null) {
                            promise.reject("service_configuration_fetch_error", "Failed to fetch configuration", authorizationException);
                            return;
                        }
                        RNAppAuthModule.this.setServiceConfiguration(str, authorizationServiceConfiguration);
                        RNAppAuthModule.this.isPrefetched = true;
                        countDownLatch.countDown();
                    }
                }, connectionBuilderCreateConnectionBuilder);
            }
        } else {
            countDownLatch.countDown();
        }
        try {
            countDownLatch.await();
            promise.resolve(Boolean.valueOf(this.isPrefetched));
        } catch (Exception e2) {
            promise.reject("service_configuration_fetch_error", "Failed to await fetch configuration", e2);
        }
    }

    @ReactMethod
    public void register(final String str, final ReadableArray readableArray, final ReadableArray readableArray2, final ReadableArray readableArray3, final String str2, final String str3, ReadableMap readableMap, ReadableMap readableMap2, Double d, boolean z, ReadableMap readableMap3, final Promise promise) {
        AuthorizationServiceConfiguration authorizationServiceConfigurationCreateAuthorizationServiceConfiguration;
        parseHeaderMap(readableMap3);
        ConnectionBuilder connectionBuilderCreateConnectionBuilder = createConnectionBuilder(z, this.registrationRequestHeaders, d);
        final AppAuthConfiguration appAuthConfigurationCreateAppAuthConfiguration = createAppAuthConfiguration(connectionBuilderCreateConnectionBuilder, Boolean.valueOf(z), null);
        final HashMap<String, String> map = MapUtil.readableMapToHashMap(readableMap);
        if (readableMap2 != null || hasServiceConfiguration(str)) {
            try {
                if (hasServiceConfiguration(str)) {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = getServiceConfiguration(str);
                } else {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = createAuthorizationServiceConfiguration(readableMap2);
                }
                registerWithConfiguration(authorizationServiceConfigurationCreateAuthorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, readableArray, readableArray2, readableArray3, str2, str3, map, promise);
                return;
            } catch (Exception e) {
                promise.reject("registration_failed", e.getMessage());
                return;
            }
        }
        AuthorizationServiceConfiguration.fetchFromUrl(buildConfigurationUriFromIssuer(Uri.parse(str)), new AuthorizationServiceConfiguration.RetrieveConfigurationCallback() { // from class: com.rnappauth.RNAppAuthModule.2
            @Override // net.openid.appauth.AuthorizationServiceConfiguration.RetrieveConfigurationCallback
            public void onFetchConfigurationCompleted(AuthorizationServiceConfiguration authorizationServiceConfiguration, AuthorizationException authorizationException) {
                if (authorizationException != null) {
                    promise.reject("service_configuration_fetch_error", authorizationException.getLocalizedMessage(), authorizationException);
                } else {
                    RNAppAuthModule.this.setServiceConfiguration(str, authorizationServiceConfiguration);
                    RNAppAuthModule.this.registerWithConfiguration(authorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, readableArray, readableArray2, readableArray3, str2, str3, map, promise);
                }
            }
        }, connectionBuilderCreateConnectionBuilder);
    }

    @ReactMethod
    public void authorize(final String str, final String str2, final String str3, String str4, final ReadableArray readableArray, ReadableMap readableMap, ReadableMap readableMap2, Boolean bool, Double d, final Boolean bool2, final Boolean bool3, String str5, boolean z, ReadableMap readableMap3, ReadableArray readableArray2, final boolean z2, final Promise promise) {
        AuthorizationServiceConfiguration authorizationServiceConfigurationCreateAuthorizationServiceConfiguration;
        parseHeaderMap(readableMap3);
        ConnectionBuilder connectionBuilderCreateConnectionBuilder = createConnectionBuilder(z, this.authorizationRequestHeaders, d);
        final AppAuthConfiguration appAuthConfigurationCreateAppAuthConfiguration = createAppAuthConfiguration(connectionBuilderCreateConnectionBuilder, Boolean.valueOf(z), readableArray2);
        final HashMap<String, String> map = MapUtil.readableMapToHashMap(readableMap);
        this.promise = promise;
        this.dangerouslyAllowInsecureHttpRequests = z;
        this.additionalParametersMap = map;
        this.clientSecret = str4;
        this.clientAuthMethod = str5;
        this.skipCodeExchange = bool;
        this.useNonce = bool2;
        this.usePKCE = bool3;
        if (readableMap2 != null || hasServiceConfiguration(str)) {
            try {
                if (hasServiceConfiguration(str)) {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = getServiceConfiguration(str);
                } else {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = createAuthorizationServiceConfiguration(readableMap2);
                }
                authorizeWithConfiguration(authorizationServiceConfigurationCreateAuthorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, str3, readableArray, str2, bool2, bool3, map, Boolean.valueOf(z2));
                return;
            } catch (ActivityNotFoundException e) {
                promise.reject("browser_not_found", e.getMessage());
                return;
            } catch (Exception e2) {
                promise.reject("authentication_failed", e2.getMessage());
                return;
            }
        }
        AuthorizationServiceConfiguration.fetchFromUrl(buildConfigurationUriFromIssuer(Uri.parse(str)), new AuthorizationServiceConfiguration.RetrieveConfigurationCallback() { // from class: com.rnappauth.RNAppAuthModule.3
            @Override // net.openid.appauth.AuthorizationServiceConfiguration.RetrieveConfigurationCallback
            public void onFetchConfigurationCompleted(AuthorizationServiceConfiguration authorizationServiceConfiguration, AuthorizationException authorizationException) {
                if (authorizationException != null) {
                    promise.reject("service_configuration_fetch_error", authorizationException.getLocalizedMessage(), authorizationException);
                    return;
                }
                RNAppAuthModule.this.setServiceConfiguration(str, authorizationServiceConfiguration);
                try {
                    RNAppAuthModule.this.authorizeWithConfiguration(authorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, str3, readableArray, str2, bool2, bool3, map, Boolean.valueOf(z2));
                } catch (ActivityNotFoundException e3) {
                    promise.reject("browser_not_found", e3.getMessage());
                } catch (Exception e4) {
                    promise.reject("authentication_failed", e4.getMessage());
                }
            }
        }, connectionBuilderCreateConnectionBuilder);
    }

    @ReactMethod
    public void refresh(final String str, final String str2, final String str3, final String str4, final String str5, final ReadableArray readableArray, ReadableMap readableMap, ReadableMap readableMap2, Double d, final String str6, boolean z, ReadableMap readableMap3, ReadableArray readableArray2, final Promise promise) {
        AuthorizationServiceConfiguration authorizationServiceConfigurationCreateAuthorizationServiceConfiguration;
        parseHeaderMap(readableMap3);
        ConnectionBuilder connectionBuilderCreateConnectionBuilder = createConnectionBuilder(z, this.tokenRequestHeaders, d);
        final AppAuthConfiguration appAuthConfigurationCreateAppAuthConfiguration = createAppAuthConfiguration(connectionBuilderCreateConnectionBuilder, Boolean.valueOf(z), readableArray2);
        final HashMap<String, String> map = MapUtil.readableMapToHashMap(readableMap);
        if (str4 != null) {
            map.put("client_secret", str4);
        }
        this.dangerouslyAllowInsecureHttpRequests = z;
        this.additionalParametersMap = map;
        if (readableMap2 != null || hasServiceConfiguration(str)) {
            try {
                if (hasServiceConfiguration(str)) {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = getServiceConfiguration(str);
                } else {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = createAuthorizationServiceConfiguration(readableMap2);
                }
                refreshWithConfiguration(authorizationServiceConfigurationCreateAuthorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, str5, str3, readableArray, str2, map, str6, str4, promise);
                return;
            } catch (ActivityNotFoundException e) {
                promise.reject("browser_not_found", e.getMessage());
                return;
            } catch (Exception e2) {
                promise.reject("token_refresh_failed", e2.getMessage());
                return;
            }
        }
        AuthorizationServiceConfiguration.fetchFromUrl(buildConfigurationUriFromIssuer(Uri.parse(str)), new AuthorizationServiceConfiguration.RetrieveConfigurationCallback() { // from class: com.rnappauth.RNAppAuthModule.4
            @Override // net.openid.appauth.AuthorizationServiceConfiguration.RetrieveConfigurationCallback
            public void onFetchConfigurationCompleted(AuthorizationServiceConfiguration authorizationServiceConfiguration, AuthorizationException authorizationException) {
                if (authorizationException != null) {
                    promise.reject("service_configuration_fetch_error", authorizationException.getLocalizedMessage(), authorizationException);
                    return;
                }
                RNAppAuthModule.this.setServiceConfiguration(str, authorizationServiceConfiguration);
                try {
                    RNAppAuthModule.this.refreshWithConfiguration(authorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, str5, str3, readableArray, str2, map, str6, str4, promise);
                } catch (ActivityNotFoundException e3) {
                    promise.reject("browser_not_found", e3.getMessage());
                } catch (Exception e4) {
                    promise.reject("token_refresh_failed", e4.getMessage());
                }
            }
        }, connectionBuilderCreateConnectionBuilder);
    }

    @ReactMethod
    public void logout(final String str, final String str2, final String str3, ReadableMap readableMap, ReadableMap readableMap2, boolean z, ReadableArray readableArray, final Promise promise) {
        AuthorizationServiceConfiguration authorizationServiceConfigurationCreateAuthorizationServiceConfiguration;
        ConnectionBuilder connectionBuilderCreateConnectionBuilder = createConnectionBuilder(z, null);
        final AppAuthConfiguration appAuthConfigurationCreateAppAuthConfiguration = createAppAuthConfiguration(connectionBuilderCreateConnectionBuilder, Boolean.valueOf(z), readableArray);
        final HashMap<String, String> map = MapUtil.readableMapToHashMap(readableMap2);
        this.promise = promise;
        if (readableMap != null || hasServiceConfiguration(str)) {
            try {
                if (hasServiceConfiguration(str)) {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = getServiceConfiguration(str);
                } else {
                    authorizationServiceConfigurationCreateAuthorizationServiceConfiguration = createAuthorizationServiceConfiguration(readableMap);
                }
                endSessionWithConfiguration(authorizationServiceConfigurationCreateAuthorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, str2, str3, map);
                return;
            } catch (ActivityNotFoundException e) {
                promise.reject("browser_not_found", e.getMessage());
                return;
            } catch (Exception e2) {
                promise.reject("end_session_failed", e2.getMessage());
                return;
            }
        }
        AuthorizationServiceConfiguration.fetchFromUrl(buildConfigurationUriFromIssuer(Uri.parse(str)), new AuthorizationServiceConfiguration.RetrieveConfigurationCallback() { // from class: com.rnappauth.RNAppAuthModule.5
            @Override // net.openid.appauth.AuthorizationServiceConfiguration.RetrieveConfigurationCallback
            public void onFetchConfigurationCompleted(AuthorizationServiceConfiguration authorizationServiceConfiguration, AuthorizationException authorizationException) {
                if (authorizationException != null) {
                    promise.reject("service_configuration_fetch_error", authorizationException.getLocalizedMessage(), authorizationException);
                    return;
                }
                RNAppAuthModule.this.setServiceConfiguration(str, authorizationServiceConfiguration);
                try {
                    RNAppAuthModule.this.endSessionWithConfiguration(authorizationServiceConfiguration, appAuthConfigurationCreateAppAuthConfiguration, str2, str3, map);
                } catch (ActivityNotFoundException e3) {
                    promise.reject("browser_not_found", e3.getMessage());
                } catch (Exception e4) {
                    promise.reject("end_session_failed", e4.getMessage());
                }
            }
        }, connectionBuilderCreateConnectionBuilder);
    }

    @Override // com.facebook.react.bridge.ActivityEventListener
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) throws Exception {
        TokenRequest tokenRequestCreateTokenExchangeRequest;
        WritableMap writableMapAuthorizationResponseToMap;
        String str;
        try {
            if (i == 52) {
                if (intent == null) {
                    Promise promise = this.promise;
                    if (promise != null) {
                        promise.reject("authentication_error", "Data intent is null");
                        return;
                    }
                    return;
                }
                final AuthorizationResponse authorizationResponseFromIntent = AuthorizationResponse.fromIntent(intent);
                AuthorizationException authorizationExceptionFromIntent = AuthorizationException.fromIntent(intent);
                if (authorizationExceptionFromIntent != null) {
                    Promise promise2 = this.promise;
                    if (promise2 != null) {
                        handleAuthorizationException("authentication_error", authorizationExceptionFromIntent, promise2);
                        return;
                    }
                    return;
                }
                Boolean bool = this.skipCodeExchange;
                if (bool != null && bool.booleanValue()) {
                    Boolean bool2 = this.usePKCE;
                    if (bool2 != null && bool2.booleanValue() && (str = this.codeVerifier) != null) {
                        writableMapAuthorizationResponseToMap = TokenResponseFactory.authorizationCodeResponseToMap(authorizationResponseFromIntent, str);
                    } else {
                        writableMapAuthorizationResponseToMap = TokenResponseFactory.authorizationResponseToMap(authorizationResponseFromIntent);
                    }
                    Promise promise3 = this.promise;
                    if (promise3 != null) {
                        promise3.resolve(writableMapAuthorizationResponseToMap);
                        return;
                    }
                    return;
                }
                final Promise promise4 = this.promise;
                AuthorizationService authorizationService = new AuthorizationService(this.reactContext, createAppAuthConfiguration(createConnectionBuilder(this.dangerouslyAllowInsecureHttpRequests, this.tokenRequestHeaders), Boolean.valueOf(this.dangerouslyAllowInsecureHttpRequests), null));
                Map<String, String> map = this.additionalParametersMap;
                if (map == null) {
                    tokenRequestCreateTokenExchangeRequest = authorizationResponseFromIntent.createTokenExchangeRequest();
                } else {
                    tokenRequestCreateTokenExchangeRequest = authorizationResponseFromIntent.createTokenExchangeRequest(map);
                }
                AuthorizationService.TokenResponseCallback tokenResponseCallback = new AuthorizationService.TokenResponseCallback() { // from class: com.rnappauth.RNAppAuthModule.6
                    @Override // net.openid.appauth.AuthorizationService.TokenResponseCallback
                    public void onTokenRequestCompleted(TokenResponse tokenResponse, AuthorizationException authorizationException) {
                        if (tokenResponse != null) {
                            WritableMap writableMap = TokenResponseFactory.tokenResponseToMap(tokenResponse, authorizationResponseFromIntent);
                            Promise promise5 = promise4;
                            if (promise5 != null) {
                                promise5.resolve(writableMap);
                                return;
                            }
                            return;
                        }
                        if (RNAppAuthModule.this.promise != null) {
                            RNAppAuthModule rNAppAuthModule = RNAppAuthModule.this;
                            rNAppAuthModule.handleAuthorizationException("token_exchange_failed", authorizationException, rNAppAuthModule.promise);
                        }
                    }
                };
                String str2 = this.clientSecret;
                if (str2 != null) {
                    authorizationService.performTokenRequest(tokenRequestCreateTokenExchangeRequest, getClientAuthentication(str2, this.clientAuthMethod), tokenResponseCallback);
                } else {
                    authorizationService.performTokenRequest(tokenRequestCreateTokenExchangeRequest, tokenResponseCallback);
                }
            }
            if (i == 53) {
                if (intent == null) {
                    Promise promise5 = this.promise;
                    if (promise5 != null) {
                        promise5.reject("end_session_failed", "Data intent is null");
                        return;
                    }
                    return;
                }
                EndSessionResponse endSessionResponseFromIntent = EndSessionResponse.fromIntent(intent);
                AuthorizationException authorizationExceptionFromIntent2 = AuthorizationException.fromIntent(intent);
                if (authorizationExceptionFromIntent2 != null) {
                    Promise promise6 = this.promise;
                    if (promise6 != null) {
                        handleAuthorizationException("end_session_failed", authorizationExceptionFromIntent2, promise6);
                        return;
                    }
                    return;
                }
                Promise promise7 = this.promise;
                if (promise7 != null) {
                    promise7.resolve(EndSessionResponseFactory.endSessionResponseToMap(endSessionResponseFromIntent));
                }
            }
        } catch (Exception e) {
            Promise promise8 = this.promise;
            if (promise8 != null) {
                promise8.reject("run_time_exception", e.getMessage());
                return;
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerWithConfiguration(AuthorizationServiceConfiguration authorizationServiceConfiguration, AppAuthConfiguration appAuthConfiguration, ReadableArray readableArray, ReadableArray readableArray2, ReadableArray readableArray3, String str, String str2, Map<String, String> map, final Promise promise) {
        AuthorizationService authorizationService = new AuthorizationService(this.reactContext, appAuthConfiguration);
        RegistrationRequest.Builder additionalParameters = new RegistrationRequest.Builder(authorizationServiceConfiguration, arrayToUriList(readableArray)).setAdditionalParameters(map);
        if (readableArray2 != null) {
            additionalParameters.setResponseTypeValues(arrayToList(readableArray2));
        }
        if (readableArray3 != null) {
            additionalParameters.setGrantTypeValues(arrayToList(readableArray3));
        }
        if (str != null) {
            additionalParameters.setSubjectType(str);
        }
        if (str2 != null) {
            additionalParameters.setTokenEndpointAuthenticationMethod(str2);
        }
        authorizationService.performRegistrationRequest(additionalParameters.build(), new AuthorizationService.RegistrationResponseCallback() { // from class: com.rnappauth.RNAppAuthModule.7
            @Override // net.openid.appauth.AuthorizationService.RegistrationResponseCallback
            public void onRegistrationRequestCompleted(RegistrationResponse registrationResponse, AuthorizationException authorizationException) {
                if (registrationResponse != null) {
                    promise.resolve(RegistrationResponseFactory.registrationResponseToMap(registrationResponse));
                } else {
                    RNAppAuthModule.this.handleAuthorizationException("registration_failed", authorizationException, promise);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void authorizeWithConfiguration(AuthorizationServiceConfiguration authorizationServiceConfiguration, AppAuthConfiguration appAuthConfiguration, String str, ReadableArray readableArray, String str2, Boolean bool, Boolean bool2, Map<String, String> map, Boolean bool3) {
        String strArrayToString = readableArray != null ? arrayToString(readableArray) : null;
        ReactApplicationContext reactApplicationContext = this.reactContext;
        Activity currentActivity = getCurrentActivity();
        AuthorizationRequest.Builder builder = new AuthorizationRequest.Builder(authorizationServiceConfiguration, str, ResponseTypeValues.CODE, Uri.parse(str2));
        if (strArrayToString != null) {
            builder.setScope(strArrayToString);
        }
        if (map != null) {
            if (map.containsKey("display")) {
                builder.setDisplay(map.get("display"));
                map.remove("display");
            }
            if (map.containsKey("login_hint")) {
                builder.setLoginHint(map.get("login_hint"));
                map.remove("login_hint");
            }
            if (map.containsKey("prompt")) {
                builder.setPrompt(map.get("prompt"));
                map.remove("prompt");
            }
            if (map.containsKey("state")) {
                builder.setState(map.get("state"));
                map.remove("state");
            }
            if (map.containsKey("nonce")) {
                builder.setNonce(map.get("nonce"));
                map.remove("nonce");
            }
            if (map.containsKey("ui_locales")) {
                builder.setUiLocales(map.get("ui_locales"));
                map.remove("ui_locales");
            }
            builder.setAdditionalParameters(map);
        }
        if (!bool2.booleanValue()) {
            builder.setCodeVerifier(null);
        } else {
            String strGenerateRandomCodeVerifier = CodeVerifierUtil.generateRandomCodeVerifier();
            this.codeVerifier = strGenerateRandomCodeVerifier;
            builder.setCodeVerifier(strGenerateRandomCodeVerifier);
        }
        if (!bool.booleanValue()) {
            builder.setNonce(null);
        }
        AuthorizationRequest authorizationRequestBuild = builder.build();
        AuthorizationService authorizationService = new AuthorizationService(reactApplicationContext, appAuthConfiguration);
        CustomTabsIntent customTabsIntentBuild = authorizationService.createCustomTabsIntentBuilder(new Uri[0]).build();
        if (bool3.booleanValue()) {
            customTabsIntentBuild.intent.putExtra(TrustedWebUtils.EXTRA_LAUNCH_AS_TRUSTED_WEB_ACTIVITY, true);
        }
        currentActivity.startActivityForResult(authorizationService.getAuthorizationRequestIntent(authorizationRequestBuild, customTabsIntentBuild), 52);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshWithConfiguration(AuthorizationServiceConfiguration authorizationServiceConfiguration, AppAuthConfiguration appAuthConfiguration, String str, String str2, ReadableArray readableArray, String str3, Map<String, String> map, String str4, String str5, final Promise promise) {
        String strArrayToString = readableArray != null ? arrayToString(readableArray) : null;
        ReactApplicationContext reactApplicationContext = this.reactContext;
        TokenRequest.Builder redirectUri = new TokenRequest.Builder(authorizationServiceConfiguration, str2).setRefreshToken(str).setRedirectUri(Uri.parse(str3));
        if (strArrayToString != null) {
            redirectUri.setScope(strArrayToString);
        }
        if (!map.isEmpty()) {
            redirectUri.setAdditionalParameters(map);
        }
        TokenRequest tokenRequestBuild = redirectUri.build();
        AuthorizationService authorizationService = new AuthorizationService(reactApplicationContext, appAuthConfiguration);
        AuthorizationService.TokenResponseCallback tokenResponseCallback = new AuthorizationService.TokenResponseCallback() { // from class: com.rnappauth.RNAppAuthModule.8
            @Override // net.openid.appauth.AuthorizationService.TokenResponseCallback
            public void onTokenRequestCompleted(TokenResponse tokenResponse, AuthorizationException authorizationException) {
                if (tokenResponse != null) {
                    promise.resolve(TokenResponseFactory.tokenResponseToMap(tokenResponse));
                } else {
                    RNAppAuthModule.this.handleAuthorizationException("token_refresh_failed", authorizationException, promise);
                }
            }
        };
        if (str5 != null) {
            authorizationService.performTokenRequest(tokenRequestBuild, getClientAuthentication(str5, str4), tokenResponseCallback);
        } else {
            authorizationService.performTokenRequest(tokenRequestBuild, tokenResponseCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endSessionWithConfiguration(AuthorizationServiceConfiguration authorizationServiceConfiguration, AppAuthConfiguration appAuthConfiguration, String str, String str2, Map<String, String> map) {
        ReactApplicationContext reactApplicationContext = this.reactContext;
        Activity currentActivity = getCurrentActivity();
        EndSessionRequest.Builder postLogoutRedirectUri = new EndSessionRequest.Builder(authorizationServiceConfiguration).setIdTokenHint(str).setPostLogoutRedirectUri(Uri.parse(str2));
        if (map != null) {
            if (map.containsKey("state")) {
                postLogoutRedirectUri.setState(map.get("state"));
                map.remove("state");
            }
            postLogoutRedirectUri.setAdditionalParameters(map);
        }
        currentActivity.startActivityForResult(new AuthorizationService(reactApplicationContext, appAuthConfiguration).getEndSessionRequestIntent(postLogoutRedirectUri.build()), 53);
    }

    private void parseHeaderMap(ReadableMap readableMap) {
        if (readableMap == null) {
            return;
        }
        if (readableMap.hasKey("register") && readableMap.getType("register") == ReadableType.Map) {
            this.registrationRequestHeaders = MapUtil.readableMapToHashMap(readableMap.getMap("register"));
        }
        if (readableMap.hasKey("authorize") && readableMap.getType("authorize") == ReadableType.Map) {
            this.authorizationRequestHeaders = MapUtil.readableMapToHashMap(readableMap.getMap("authorize"));
        }
        if (readableMap.hasKey(ResponseTypeValues.TOKEN) && readableMap.getType(ResponseTypeValues.TOKEN) == ReadableType.Map) {
            this.tokenRequestHeaders = MapUtil.readableMapToHashMap(readableMap.getMap(ResponseTypeValues.TOKEN));
        }
    }

    private ClientAuthentication getClientAuthentication(String str, String str2) {
        if (str2.equals("post")) {
            return new ClientSecretPost(str);
        }
        return new ClientSecretBasic(str);
    }

    private String arrayToString(ReadableArray readableArray) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < readableArray.size(); i++) {
            if (i != 0) {
                sb.append(' ');
            }
            sb.append(readableArray.getString(i));
        }
        return sb.toString();
    }

    private List<String> arrayToList(ReadableArray readableArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < readableArray.size(); i++) {
            arrayList.add(readableArray.getString(i));
        }
        return arrayList;
    }

    private List<Uri> arrayToUriList(ReadableArray readableArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < readableArray.size(); i++) {
            arrayList.add(Uri.parse(readableArray.getString(i)));
        }
        return arrayList;
    }

    private AppAuthConfiguration createAppAuthConfiguration(ConnectionBuilder connectionBuilder, Boolean bool, ReadableArray readableArray) {
        return new AppAuthConfiguration.Builder().setBrowserMatcher(getBrowserAllowList(readableArray)).setConnectionBuilder(connectionBuilder).setSkipIssuerHttpsCheck(bool).build();
    }

    private ConnectionBuilder createConnectionBuilder(boolean z, Map<String, String> map, Double d) {
        ConnectionBuilder connectionBuilder;
        if (z) {
            connectionBuilder = UnsafeConnectionBuilder.INSTANCE;
        } else {
            connectionBuilder = DefaultConnectionBuilder.INSTANCE;
        }
        CustomConnectionBuilder customConnectionBuilder = new CustomConnectionBuilder(connectionBuilder);
        if (map != null) {
            customConnectionBuilder.setHeaders(map);
        }
        customConnectionBuilder.setConnectionTimeout(d.intValue());
        return customConnectionBuilder;
    }

    private ConnectionBuilder createConnectionBuilder(boolean z, Map<String, String> map) {
        ConnectionBuilder connectionBuilder;
        if (z) {
            connectionBuilder = UnsafeConnectionBuilder.INSTANCE;
        } else {
            connectionBuilder = DefaultConnectionBuilder.INSTANCE;
        }
        CustomConnectionBuilder customConnectionBuilder = new CustomConnectionBuilder(connectionBuilder);
        if (map != null) {
            customConnectionBuilder.setHeaders(map);
        }
        return customConnectionBuilder;
    }

    private Uri buildConfigurationUriFromIssuer(Uri uri) {
        return uri.buildUpon().appendPath(AuthorizationServiceConfiguration.WELL_KNOWN_PATH).appendPath(AuthorizationServiceConfiguration.OPENID_CONFIGURATION_RESOURCE).build();
    }

    private AuthorizationServiceConfiguration createAuthorizationServiceConfiguration(ReadableMap readableMap) throws Exception {
        if (!readableMap.hasKey("authorizationEndpoint")) {
            throw new Exception("serviceConfiguration passed without an authorizationEndpoint");
        }
        if (!readableMap.hasKey("tokenEndpoint")) {
            throw new Exception("serviceConfiguration passed without a tokenEndpoint");
        }
        return new AuthorizationServiceConfiguration(Uri.parse(readableMap.getString("authorizationEndpoint")), Uri.parse(readableMap.getString("tokenEndpoint")), readableMap.hasKey("registrationEndpoint") ? Uri.parse(readableMap.getString("registrationEndpoint")) : null, readableMap.hasKey("endSessionEndpoint") ? Uri.parse(readableMap.getString("endSessionEndpoint")) : null);
    }

    private void warmChromeCustomTab(Context context, final String str) {
        CustomTabsClient.bindCustomTabsService(context, "com.android.chrome", new CustomTabsServiceConnection() { // from class: com.rnappauth.RNAppAuthModule.9
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }

            @Override // androidx.browser.customtabs.CustomTabsServiceConnection
            public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
                customTabsClient.warmup(0L);
                CustomTabsSession customTabsSessionNewSession = customTabsClient.newSession(new CustomTabsCallback());
                if (customTabsSessionNewSession == null) {
                    return;
                }
                customTabsSessionNewSession.mayLaunchUrl(Uri.parse(str), null, Collections.emptyList());
            }
        });
    }

    private boolean hasServiceConfiguration(String str) {
        return str != null && this.mServiceConfigurations.containsKey(str);
    }

    private AuthorizationServiceConfiguration getServiceConfiguration(String str) {
        if (str == null) {
            return null;
        }
        return this.mServiceConfigurations.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthorizationException(String str, AuthorizationException authorizationException, Promise promise) {
        if (authorizationException.getLocalizedMessage() == null) {
            promise.reject(str, authorizationException.error, authorizationException);
            return;
        }
        if (authorizationException.error != null) {
            str = authorizationException.error;
        }
        promise.reject(str, authorizationException.getLocalizedMessage(), authorizationException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setServiceConfiguration(String str, AuthorizationServiceConfiguration authorizationServiceConfiguration) {
        if (str != null) {
            this.mServiceConfigurations.put(str, authorizationServiceConfiguration);
        }
    }

    private BrowserMatcher getBrowserAllowList(ReadableArray readableArray) {
        if (readableArray == null || readableArray.size() == 0) {
            return AnyBrowserMatcher.INSTANCE;
        }
        MutableBrowserAllowList mutableBrowserAllowList = new MutableBrowserAllowList();
        for (int i = 0; i < readableArray.size(); i++) {
            String string = readableArray.getString(i);
            if (string != null) {
                string.hashCode();
                switch (string) {
                    case "chromeCustomTab":
                        mutableBrowserAllowList.add(VersionedBrowserMatcher.CHROME_CUSTOM_TAB);
                        break;
                    case "chrome":
                        mutableBrowserAllowList.add(VersionedBrowserMatcher.CHROME_BROWSER);
                        break;
                    case "firefox":
                        mutableBrowserAllowList.add(VersionedBrowserMatcher.FIREFOX_BROWSER);
                        break;
                    case "samsungCustomTab":
                        mutableBrowserAllowList.add(VersionedBrowserMatcher.SAMSUNG_CUSTOM_TAB);
                        break;
                    case "firefoxCustomTab":
                        mutableBrowserAllowList.add(VersionedBrowserMatcher.FIREFOX_CUSTOM_TAB);
                        break;
                    case "samsung":
                        mutableBrowserAllowList.add(VersionedBrowserMatcher.SAMSUNG_BROWSER);
                        break;
                }
            }
        }
        return mutableBrowserAllowList;
    }
}

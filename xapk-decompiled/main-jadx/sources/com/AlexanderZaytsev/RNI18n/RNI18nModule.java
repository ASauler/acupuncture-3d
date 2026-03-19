package com.AlexanderZaytsev.RNI18n;

import android.os.LocaleList;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableArray;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RNI18nModule extends ReactContextBaseJavaModule {
    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNI18n";
    }

    public RNI18nModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    private String toLanguageTag(Locale locale) {
        String languageTag = locale.toLanguageTag();
        return languageTag.matches("^(iw|in|ji).*") ? languageTag.replace("iw", "he").replace("in", "id").replace("ji", "yi") : languageTag;
    }

    private WritableArray getLocaleList() {
        WritableArray writableArrayCreateArray = Arguments.createArray();
        LocaleList locales = getReactApplicationContext().getResources().getConfiguration().getLocales();
        for (int i = 0; i < locales.size(); i++) {
            writableArrayCreateArray.pushString(toLanguageTag(locales.get(i)));
        }
        return writableArrayCreateArray;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("languages", getLocaleList());
        return map;
    }

    @ReactMethod
    public void getLanguages(Promise promise) {
        try {
            promise.resolve(getLocaleList());
        } catch (Exception e) {
            promise.reject(e);
        }
    }
}

package com.indicative.client.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.common.net.HttpHeaders;
import com.google.firebase.firestore.util.ExponentialBackoff;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Indicative {
    private static final String EVENT_PREFS = "indicative_events";
    private static final String PROPS_PREFS = "indicative_prop_cache";
    private static final int SEND_EVENTS_TIMER_SECONDS = 60;
    private static final String UNIQUE_PREFS = "indicative_unique";
    private static final boolean debug = false;
    private static Indicative instance;
    private String apiKey;
    private Context context;
    private SharedPreferences eventPrefs;
    private SharedPreferences propsPrefs;
    private SharedPreferences uniquePrefs;

    private Indicative() {
    }

    public static Indicative getInstance() {
        if (instance == null) {
            instance = new Indicative();
        }
        return instance;
    }

    public static Indicative launch(Context context, String str) {
        Indicative indicative = getInstance();
        indicative.apiKey = str;
        indicative.context = context;
        indicative.eventPrefs = context.getSharedPreferences(EVENT_PREFS, 0);
        indicative.uniquePrefs = context.getSharedPreferences(UNIQUE_PREFS, 0);
        indicative.propsPrefs = context.getSharedPreferences(PROPS_PREFS, 0);
        setUUIDInUniquePrefs();
        indicative.scheduleEventsTimer();
        return indicative;
    }

    public void scheduleEventsTimer() {
        Handler handler = new Handler();
        handler.post(new SendEventsTimerThread(this.context, handler));
    }

    private void sendEventNow(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        new SendEventAsyncTask(getInstance().context, str).execute(new Void[0]);
    }

    public static void recordEvent(String str, String str2, Map<String, Object> map, boolean z) {
        Map<String, Object> allPropertiesFromSharedPrefs = getAllPropertiesFromSharedPrefs();
        if (map != null) {
            allPropertiesFromSharedPrefs.putAll(map);
        }
        if (str2 == null || str2.isEmpty()) {
            str2 = getUniqueIDFromSharedPrefs();
        }
        String payloadString = new Event(getInstance().apiKey, str, str2, allPropertiesFromSharedPrefs).getPayloadString();
        if (z) {
            getInstance().sendEventNow(payloadString);
        } else {
            addEventToSharedPrefs(payloadString);
        }
    }

    public static void recordEvent(String str, String str2, Map<String, Object> map) {
        recordEvent(str, str2, map, false);
    }

    public static void recordEvent(String str) {
        recordEvent(str, (String) null, (Map<String, Object>) null);
    }

    public static void recordEvent(String str, boolean z) {
        recordEvent(str, null, null, z);
    }

    public static void recordEvent(String str, String str2) {
        recordEvent(str, str2, (Map<String, Object>) null);
    }

    public static void recordEvent(String str, String str2, boolean z) {
        recordEvent(str, str2, null, z);
    }

    public static void recordEvent(String str, Map<String, Object> map) {
        recordEvent(str, (String) null, map);
    }

    public static void recordEvent(String str, Map<String, Object> map, boolean z) {
        recordEvent(str, null, map, z);
    }

    public static void recordAlias() {
        recordAlias(getUniqueID(), true);
    }

    public static void recordAlias(String str) {
        recordAlias(str, true);
    }

    public static void recordAlias(String str, boolean z) {
        String defaultUniqueID = getDefaultUniqueID();
        if (defaultUniqueID != null) {
            recordAlias(defaultUniqueID, str, z);
        }
    }

    public static void recordAlias(String str, String str2) {
        recordAlias(str, str2, true);
    }

    public static void recordAlias(String str, String str2, boolean z) {
        if (str == null || str2 == null) {
            Log.w("INDICATIVE", "Could not create alias between " + str + " and " + str2);
            return;
        }
        String payloadString = new Alias(getInstance().apiKey, str, str2).getPayloadString();
        if (z) {
            getInstance().sendEventNow(payloadString);
        } else {
            addEventToSharedPrefs(payloadString);
        }
    }

    public static void setUniqueID(String str) {
        setUniqueIDToSharedPrefs(str);
    }

    public static void setUniqueIDAndAlias(String str) {
        setUniqueIDToSharedPrefs(str);
        recordAlias(str);
    }

    public static void clearUniqueID() {
        clearUniqueIDInSharedPrefs();
    }

    public static void resetAnonymousID() {
        resetAnonymousIDInSharedPrefs();
    }

    public static void reset() {
        clearUniqueIDInSharedPrefs();
        resetAnonymousIDInSharedPrefs();
        removePropertiesFromSharedPrefs();
    }

    public static void addProperty(String str, String str2) {
        addPropertyToSharedPrefs(str, str2);
    }

    public static void addProperty(String str, int i) {
        addPropertyToSharedPrefs(str, i);
    }

    public static void addProperty(String str, boolean z) {
        addPropertyToSharedPrefs(str, z);
    }

    public static void addProperties(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() instanceof Boolean) {
                addProperty(entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            } else if (entry.getValue() instanceof String) {
                addProperty(entry.getKey(), (String) entry.getValue());
            } else if (entry.getValue() instanceof Integer) {
                addProperty(entry.getKey(), ((Integer) entry.getValue()).intValue());
            }
        }
    }

    public static void removeProperty(String str) {
        removePropertyFromSharedPrefs(str);
    }

    public static void clearProperties() {
        removePropertiesFromSharedPrefs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void addEventToSharedPrefs(String str) {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not recording event");
            return;
        }
        SharedPreferences sharedPreferences = getInstance().eventPrefs;
        sharedPreferences.edit().putInt(str, sharedPreferences.getInt(str, 0) + 1).apply();
    }

    private static synchronized void setUUIDInUniquePrefs() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not setting up unique id");
            return;
        }
        SharedPreferences sharedPreferences = getInstance().uniquePrefs;
        if (sharedPreferences.getString("uuid", null) == null) {
            sharedPreferences.edit().putString("uuid", UUID.randomUUID().toString()).apply();
        }
    }

    public static String getUniqueID() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not setting up unique id");
            return null;
        }
        return getInstance().uniquePrefs.getString(UNIQUE_PREFS, null);
    }

    public static String getActiveUniqueID() {
        return getUniqueIDFromSharedPrefs();
    }

    public static String getDefaultUniqueID() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not returning anonymous ID");
            return null;
        }
        return getInstance().uniquePrefs.getString("uuid", null);
    }

    private static synchronized void setUniqueIDToSharedPrefs(String str) {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not setting up unique id");
        } else {
            getInstance().uniquePrefs.edit().putString(UNIQUE_PREFS, str).apply();
        }
    }

    private static synchronized String getUniqueIDFromSharedPrefs() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not setting up unique id");
            return null;
        }
        SharedPreferences sharedPreferences = getInstance().uniquePrefs;
        String string = sharedPreferences.getString(UNIQUE_PREFS, null);
        if (string == null || string.isEmpty()) {
            string = sharedPreferences.getString("uuid", null);
        }
        return string;
    }

    private static synchronized void resetAnonymousIDInSharedPrefs() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not resetting anonymous id");
        } else {
            getInstance().uniquePrefs.edit().putString("uuid", UUID.randomUUID().toString()).apply();
        }
    }

    private static synchronized void clearUniqueIDInSharedPrefs() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not clearing unique id");
        } else {
            getInstance().uniquePrefs.edit().remove(UNIQUE_PREFS).apply();
        }
    }

    private static synchronized void addPropertyToSharedPrefs(String str, String str2) {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not adding common prop");
        } else {
            getInstance().propsPrefs.edit().putString(str, str2).apply();
        }
    }

    private static synchronized void addPropertyToSharedPrefs(String str, int i) {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not adding common prop");
        } else {
            getInstance().propsPrefs.edit().putInt(str, i).apply();
        }
    }

    private static synchronized void addPropertyToSharedPrefs(String str, boolean z) {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not adding common prop");
        } else {
            getInstance().propsPrefs.edit().putBoolean(str, z).apply();
        }
    }

    private static synchronized void removePropertyFromSharedPrefs(String str) {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not adding common prop");
        } else {
            getInstance().propsPrefs.edit().remove(str).apply();
        }
    }

    private static synchronized void removePropertiesFromSharedPrefs() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not adding common prop");
        } else {
            getInstance().propsPrefs.edit().clear().apply();
        }
    }

    private static synchronized Map<String, Object> getAllPropertiesFromSharedPrefs() {
        if (getInstance().context == null) {
            Log.v("Indicative", "Indicative instance has not been initialized; not getting common props");
            return new HashMap();
        }
        return getInstance().propsPrefs.getAll();
    }

    public static class Event {
        private String apiKey;
        private String eventName;
        private long eventTime = System.currentTimeMillis();
        private String eventUniqueId;
        private Map<String, Object> properties;

        public Event(String str, String str2, String str3, Map<String, Object> map) {
            this.apiKey = str;
            this.eventName = str2;
            this.eventUniqueId = str3;
            this.properties = map;
        }

        public String getPayloadString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("apiKey", this.apiKey);
                jSONObject.put("eventName", this.eventName);
                jSONObject.put("eventTime", this.eventTime);
                jSONObject.put("eventUniqueId", this.eventUniqueId);
                Map<String, Object> map = this.properties;
                if (map != null && !map.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, Object> entry : this.properties.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue());
                    }
                    jSONObject.put("properties", jSONObject2);
                }
            } catch (JSONException e) {
                Log.v("Indicative", "Event" + e.getMessage(), e.fillInStackTrace());
            }
            return jSONObject.toString();
        }
    }

    public static class Alias {
        public static final String PAYLOAD_PREFIX = "A:";
        private String apiKey;
        private String newId;
        private String previousId;
        private long timestamp = System.currentTimeMillis();

        public Alias(String str, String str2, String str3) {
            this.apiKey = str;
            this.previousId = str2;
            this.newId = str3;
        }

        public String getPayloadString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("apiKey", this.apiKey);
                jSONObject.put("previousId", this.previousId);
                jSONObject.put("newId", this.newId);
                jSONObject.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, this.timestamp);
            } catch (JSONException e) {
                Log.v("Indicative", "Alias" + e.getMessage(), e.fillInStackTrace());
            }
            return PAYLOAD_PREFIX + jSONObject.toString();
        }
    }

    public static void sendAllEvents() {
        getInstance().sendAllEvents(getInstance().context);
    }

    public synchronized void sendAllEvents(Context context) {
        SharedPreferences sharedPreferences = this.eventPrefs;
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            for (String str : all.keySet()) {
                for (int i = 0; i < ((Integer) all.get(str)).intValue(); i++) {
                    new SendEventAsyncTask(context, str).execute(new Void[0]);
                    int i2 = sharedPreferences.getInt(str, 0);
                    if (i2 > 1) {
                        sharedPreferences.edit().putInt(str, i2 - 1).apply();
                    } else {
                        sharedPreferences.edit().remove(str).apply();
                    }
                }
            }
        }
    }

    public class SendEventsTimerThread extends Thread {
        private Context context;
        private Handler handler;

        SendEventsTimerThread(Context context, Handler handler) {
            this.context = context;
            this.handler = handler;
            setName("SendEventsTimer");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Indicative.this.sendAllEvents(this.context);
            this.handler.postDelayed(this, ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS);
        }
    }

    public class SendEventAsyncTask extends AsyncTask<Void, Void, Integer> {
        private static final String API_ALIAS_ENDPOINT = "https://api.indicative.com/service/alias";
        private static final String API_EVENT_ENDPOINT = "https://api.indicative.com/service/event";
        private Context context;
        private String payload;

        public SendEventAsyncTask(Context context, String str) {
            this.context = context;
            this.payload = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Integer doInBackground(Void... voidArr) {
            String strTrim = this.payload.trim();
            this.payload = strTrim;
            String strDetermineEndpointForPayload = determineEndpointForPayload(strTrim);
            String strProcessPayload = processPayload(this.payload);
            this.payload = strProcessPayload;
            try {
                byte[] bytes = strProcessPayload.getBytes(Key.STRING_CHARSET_NAME);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strDetermineEndpointForPayload).openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_CHARSET, Key.STRING_CHARSET_NAME);
                httpURLConnection.addRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json; charset=UTF-8");
                httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_LENGTH, "" + Integer.toString(bytes.length));
                httpURLConnection.addRequestProperty("Indicative-Client", "Android");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setUseCaches(false);
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.write(bytes);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Integer.valueOf(httpURLConnection.getResponseCode());
            } catch (Exception e) {
                Log.v("Indicative", "AsyncTask: " + e.getMessage(), e);
                return 400;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Integer num) {
            if (num.intValue() == 0 || num.intValue() == 408 || num.intValue() == 500) {
                Indicative.addEventToSharedPrefs(this.payload);
            }
        }

        private String inputStreamToString(InputStream inputStream) {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                } catch (IOException e) {
                    Log.v("Indicative", " Async Task: " + e.getMessage(), e);
                }
            }
            return sb.toString();
        }

        private String determineEndpointForPayload(String str) {
            if (str == null || str.isEmpty()) {
                return null;
            }
            return str.startsWith(Alias.PAYLOAD_PREFIX) ? API_ALIAS_ENDPOINT : API_EVENT_ENDPOINT;
        }

        private String processPayload(String str) {
            if (str == null || str.isEmpty()) {
                return null;
            }
            return str.startsWith(Alias.PAYLOAD_PREFIX) ? str.substring(2) : str;
        }
    }
}

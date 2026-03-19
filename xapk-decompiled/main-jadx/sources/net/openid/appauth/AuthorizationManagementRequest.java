package net.openid.appauth;

import android.net.Uri;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public interface AuthorizationManagementRequest {
    String getState();

    JSONObject jsonSerialize();

    String jsonSerializeString();

    Uri toUri();
}

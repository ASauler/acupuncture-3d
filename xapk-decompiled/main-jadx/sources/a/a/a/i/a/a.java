package a.a.a.i.a;

import com.wikitude.common.WikitudeError;
import com.wikitude.common.internal.WikitudeErrorInternal;

/* JADX INFO: loaded from: classes.dex */
public enum a {
    pluginErrorLoadingLibrary;


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f87b = "com.wikitude.plugins.android";

    public static WikitudeError a(a aVar, String str, WikitudeError wikitudeError) {
        return new WikitudeErrorInternal(aVar.a(), f87b, str, wikitudeError);
    }

    public int a() {
        return ordinal() + 1000;
    }
}

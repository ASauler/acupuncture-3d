package com.wikitude.common.internal;

import com.wikitude.common.WikitudeError;

/* JADX INFO: loaded from: classes2.dex */
public final class WikitudeErrorInternal implements WikitudeError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f465b;
    private final String c;
    private final String d;
    private final String e;
    private final WikitudeError f;

    public WikitudeErrorInternal(int i, String str, String str2) {
        this(i, str, str2, null);
    }

    public WikitudeErrorInternal(int i, String str, String str2, WikitudeError wikitudeError) {
        this.f464a = i;
        this.f465b = str;
        this.c = str2;
        this.f = wikitudeError;
        this.d = String.format("code: %d, domain: \"%s\", message: \"%s\"", Integer.valueOf(i), str, str2);
        this.e = c();
    }

    private WikitudeErrorInternal(int i, String str, String str2, String str3, String str4, WikitudeError wikitudeError) {
        this.f464a = i;
        this.f465b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = wikitudeError;
    }

    private String c() {
        StringBuilder sb = new StringBuilder("{");
        sb.append(this.d);
        if (this.f != null) {
            sb.append("underlyingError: ");
            sb.append(d());
        }
        sb.append("}");
        return sb.toString();
    }

    private String d() {
        StringBuilder sb = new StringBuilder();
        if (this.f != null) {
            sb.append("{");
            sb.append(this.f.a());
            if (this.f.getUnderlyingError() != null) {
                sb.append(", underlyingError: ");
                sb.append(((WikitudeErrorInternal) this.f).d());
            }
            sb.append("}");
        }
        return sb.toString();
    }

    @Override // com.wikitude.common.WikitudeError
    public String a() {
        return this.d;
    }

    @Override // com.wikitude.common.WikitudeError
    public String b() {
        return this.e;
    }

    @Override // com.wikitude.common.WikitudeError
    public int getCode() {
        return this.f464a;
    }

    @Override // com.wikitude.common.WikitudeError
    public String getDomain() {
        return this.f465b;
    }

    @Override // com.wikitude.common.WikitudeError
    public String getMessage() {
        return this.c;
    }

    @Override // com.wikitude.common.WikitudeError
    public WikitudeError getUnderlyingError() {
        return this.f;
    }

    public String toString() {
        return this.d;
    }
}

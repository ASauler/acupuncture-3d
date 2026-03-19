package com.google.android.gms.internal.p002firebaseauthapi;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public class zzacp extends IOException {
    private zzadm zza;

    public zzacp(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.zza = null;
    }

    static zzaco zza() {
        return new zzaco("Protocol message tag had invalid wire type.");
    }

    static zzacp zzb() {
        return new zzacp("Protocol message end-group tag did not match expected tag.");
    }

    static zzacp zzc() {
        return new zzacp("Protocol message contained an invalid tag (zero).");
    }

    static zzacp zzd() {
        return new zzacp("Protocol message had invalid UTF-8.");
    }

    static zzacp zze() {
        return new zzacp("CodedInputStream encountered a malformed varint.");
    }

    static zzacp zzf() {
        return new zzacp("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzacp zzg() {
        return new zzacp("Failed to parse the message.");
    }

    static zzacp zzi() {
        return new zzacp("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzacp zzh(zzadm zzadmVar) {
        this.zza = zzadmVar;
        return this;
    }

    public zzacp(String str) {
        super(str);
        this.zza = null;
    }
}

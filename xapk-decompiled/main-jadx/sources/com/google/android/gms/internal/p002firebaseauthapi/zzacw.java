package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
final class zzacw extends zzada {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzacw() {
        super(null);
    }

    /* synthetic */ zzacw(zzacv zzacvVar) {
        super(null);
    }

    private static List zzf(Object obj, long j, int i) {
        List list;
        List list2 = (List) zzaez.zzf(obj, j);
        if (list2.isEmpty()) {
            List zzactVar = list2 instanceof zzacu ? new zzact(i) : ((list2 instanceof zzadt) && (list2 instanceof zzacm)) ? ((zzacm) list2).zzd(i) : new ArrayList(i);
            zzaez.zzs(obj, j, zzactVar);
            return zzactVar;
        }
        if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i);
            arrayList.addAll(list2);
            zzaez.zzs(obj, j, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof zzaeu)) {
                if (!(list2 instanceof zzadt) || !(list2 instanceof zzacm)) {
                    return list2;
                }
                zzacm zzacmVar = (zzacm) list2;
                if (zzacmVar.zzc()) {
                    return list2;
                }
                zzacm zzacmVarZzd = zzacmVar.zzd(list2.size() + i);
                zzaez.zzs(obj, j, zzacmVarZzd);
                return zzacmVarZzd;
            }
            zzact zzactVar2 = new zzact(list2.size() + i);
            zzactVar2.addAll(zzactVar2.size(), (zzaeu) list2);
            zzaez.zzs(obj, j, zzactVar2);
            list = zzactVar2;
        }
        return list;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzada
    final List zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzada
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzaez.zzf(obj, j);
        if (list instanceof zzacu) {
            objUnmodifiableList = ((zzacu) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzadt) && (list instanceof zzacm)) {
                zzacm zzacmVar = (zzacm) list;
                if (zzacmVar.zzc()) {
                    zzacmVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzaez.zzs(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzada
    final void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzaez.zzf(obj2, j);
        List listZzf = zzf(obj, j, list.size());
        int size = listZzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listZzf.addAll(list);
        }
        if (size > 0) {
            list = listZzf;
        }
        zzaez.zzs(obj, j, list);
    }
}

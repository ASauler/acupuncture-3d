package com.unity3d.player;

import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f425a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class f426b;
    private Object c;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Class[] f427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Method f428b = null;

        public a(Class[] clsArr) {
            this.f427a = clsArr;
        }
    }

    public t(Class cls, Object obj) {
        this.f426b = cls;
        this.c = obj;
    }

    private void a(String str, a aVar) {
        try {
            aVar.f428b = this.f426b.getMethod(str, aVar.f427a);
        } catch (Exception e) {
            i.Log(6, "Exception while trying to get method " + str + ". " + e.getLocalizedMessage());
            aVar.f428b = null;
        }
    }

    public final Object a(String str, Object... objArr) {
        StringBuilder sbAppend;
        Object objInvoke = null;
        if (this.f425a.containsKey(str)) {
            a aVar = (a) this.f425a.get(str);
            if (aVar.f428b == null) {
                a(str, aVar);
            }
            if (aVar.f428b != null) {
                try {
                    objInvoke = objArr.length == 0 ? aVar.f428b.invoke(this.c, new Object[0]) : aVar.f428b.invoke(this.c, objArr);
                } catch (Exception e) {
                    i.Log(6, "Error trying to call delegated method " + str + ". " + e.getLocalizedMessage());
                }
                return objInvoke;
            }
            sbAppend = new StringBuilder("Unable to create method: ").append(str);
        } else {
            sbAppend = new StringBuilder("No definition for method ").append(str).append(" can be found");
        }
        i.Log(6, sbAppend.toString());
        return null;
    }

    public final void a(String str, Class[] clsArr) {
        this.f425a.put(str, new a(clsArr));
    }
}

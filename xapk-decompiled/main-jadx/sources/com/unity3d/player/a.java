package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.assetpacks.AssetPackLocation;
import com.google.android.play.core.assetpacks.AssetPackManager;
import com.google.android.play.core.assetpacks.AssetPackManagerFactory;
import com.google.android.play.core.assetpacks.AssetPackState;
import com.google.android.play.core.assetpacks.AssetPackStateUpdateListener;
import com.google.android.play.core.assetpacks.AssetPackStates;
import com.google.android.play.core.tasks.OnCompleteListener;
import com.google.android.play.core.tasks.OnSuccessListener;
import com.google.android.play.core.tasks.RuntimeExecutionException;
import com.google.android.play.core.tasks.Task;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class a implements com.unity3d.player.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AssetPackManager f360b;
    private HashSet c;
    private Object d;

    /* JADX INFO: renamed from: com.unity3d.player.a$a, reason: collision with other inner class name */
    private static class RunnableC0053a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Set f361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f362b;
        private int c;
        private long d;
        private long e;
        private int f;
        private int g;

        RunnableC0053a(Set set, String str, int i, long j, long j2, int i2, int i3) {
            this.f361a = set;
            this.f362b = str;
            this.c = i;
            this.d = j;
            this.e = j2;
            this.f = i2;
            this.g = i3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Iterator it = this.f361a.iterator();
            while (it.hasNext()) {
                ((IAssetPackManagerDownloadStatusCallback) it.next()).onStatusUpdate(this.f362b, this.c, this.d, this.e, this.f, this.g);
            }
        }
    }

    private class b implements AssetPackStateUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HashSet f364b;
        private Looper c;

        public b(a aVar, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
            this(iAssetPackManagerDownloadStatusCallback, Looper.myLooper());
        }

        public b(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, Looper looper) {
            HashSet hashSet = new HashSet();
            this.f364b = hashSet;
            hashSet.add(iAssetPackManagerDownloadStatusCallback);
            this.c = looper;
        }

        private static Set a(HashSet hashSet) {
            return (Set) hashSet.clone();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public synchronized void onStateUpdate(AssetPackState assetPackState) {
            if (assetPackState.status() == 4 || assetPackState.status() == 5 || assetPackState.status() == 0) {
                synchronized (a.f359a) {
                    a.this.c.remove(assetPackState.name());
                    if (a.this.c.isEmpty()) {
                        a aVar = a.this;
                        aVar.a(aVar.d);
                        a.c(a.this);
                    }
                }
            }
            if (this.f364b.size() == 0) {
                return;
            }
            new Handler(this.c).post(new RunnableC0053a(a(this.f364b), assetPackState.name(), assetPackState.status(), assetPackState.totalBytesToDownload(), assetPackState.bytesDownloaded(), assetPackState.transferProgressPercentage(), assetPackState.errorCode()));
        }

        public final synchronized void a(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
            this.f364b.add(iAssetPackManagerDownloadStatusCallback);
        }
    }

    private static class c implements OnSuccessListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IAssetPackManagerMobileDataConfirmationCallback f365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Looper f366b = Looper.myLooper();

        /* JADX INFO: renamed from: com.unity3d.player.a$c$a, reason: collision with other inner class name */
        private static class RunnableC0054a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IAssetPackManagerMobileDataConfirmationCallback f367a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f368b;

            RunnableC0054a(IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback, boolean z) {
                this.f367a = iAssetPackManagerMobileDataConfirmationCallback;
                this.f368b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f367a.onMobileDataConfirmationResult(this.f368b);
            }
        }

        public c(IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback) {
            this.f365a = iAssetPackManagerMobileDataConfirmationCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(Integer num) {
            if (this.f365a != null) {
                new Handler(this.f366b).post(new RunnableC0054a(this.f365a, num.intValue() == -1));
            }
        }
    }

    private static class d implements OnCompleteListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IAssetPackManagerDownloadStatusCallback f369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Looper f370b = Looper.myLooper();
        private String c;

        public d(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, String str) {
            this.f369a = iAssetPackManagerDownloadStatusCallback;
            this.c = str;
        }

        private void a(String str, int i, int i2, long j) {
            new Handler(this.f370b).post(new RunnableC0053a(Collections.singleton(this.f369a), str, i, j, i == 4 ? j : 0L, 0, i2));
        }

        public final void onComplete(Task task) {
            try {
                AssetPackStates assetPackStates = (AssetPackStates) task.getResult();
                Map mapPackStates = assetPackStates.packStates();
                if (mapPackStates.size() == 0) {
                    return;
                }
                for (AssetPackState assetPackState : mapPackStates.values()) {
                    if (assetPackState.errorCode() != 0 || assetPackState.status() == 4 || assetPackState.status() == 5 || assetPackState.status() == 0) {
                        a(assetPackState.name(), assetPackState.status(), assetPackState.errorCode(), assetPackStates.totalBytes());
                    } else {
                        a.f359a.a(assetPackState.name(), this.f369a, this.f370b);
                    }
                }
            } catch (RuntimeExecutionException e) {
                a(this.c, 0, e.getErrorCode(), 0L);
            }
        }
    }

    private static class e implements OnCompleteListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IAssetPackManagerStatusQueryCallback f371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Looper f372b = Looper.myLooper();
        private String[] c;

        /* JADX INFO: renamed from: com.unity3d.player.a$e$a, reason: collision with other inner class name */
        private static class RunnableC0055a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IAssetPackManagerStatusQueryCallback f373a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f374b;
            private String[] c;
            private int[] d;
            private int[] e;

            RunnableC0055a(IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback, long j, String[] strArr, int[] iArr, int[] iArr2) {
                this.f373a = iAssetPackManagerStatusQueryCallback;
                this.f374b = j;
                this.c = strArr;
                this.d = iArr;
                this.e = iArr2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f373a.onStatusResult(this.f374b, this.c, this.d, this.e);
            }
        }

        public e(IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback, String[] strArr) {
            this.f371a = iAssetPackManagerStatusQueryCallback;
            this.c = strArr;
        }

        public final void onComplete(Task task) {
            if (this.f371a == null) {
                return;
            }
            int i = 0;
            try {
                AssetPackStates assetPackStates = (AssetPackStates) task.getResult();
                Map mapPackStates = assetPackStates.packStates();
                int size = mapPackStates.size();
                String[] strArr = new String[size];
                int[] iArr = new int[size];
                int[] iArr2 = new int[size];
                for (AssetPackState assetPackState : mapPackStates.values()) {
                    strArr[i] = assetPackState.name();
                    iArr[i] = assetPackState.status();
                    iArr2[i] = assetPackState.errorCode();
                    i++;
                }
                new Handler(this.f372b).post(new RunnableC0055a(this.f371a, assetPackStates.totalBytes(), strArr, iArr, iArr2));
            } catch (RuntimeExecutionException e) {
                String message = e.getMessage();
                for (String str : this.c) {
                    if (message.contains(str)) {
                        new Handler(this.f372b).post(new RunnableC0055a(this.f371a, 0L, new String[]{str}, new int[]{0}, new int[]{e.getErrorCode()}));
                        return;
                    }
                }
                String[] strArr2 = this.c;
                int[] iArr3 = new int[strArr2.length];
                int[] iArr4 = new int[strArr2.length];
                for (int i2 = 0; i2 < this.c.length; i2++) {
                    iArr3[i2] = 0;
                    iArr4[i2] = e.getErrorCode();
                }
                new Handler(this.f372b).post(new RunnableC0055a(this.f371a, 0L, this.c, iArr3, iArr4));
            }
        }
    }

    private a(Context context) {
        if (f359a != null) {
            throw new RuntimeException("AssetPackManagerWrapper should be created only once. Use getInstance() instead.");
        }
        this.f360b = AssetPackManagerFactory.getInstance(context);
        this.c = new HashSet();
    }

    public static com.unity3d.player.e a(Context context) {
        if (f359a == null) {
            f359a = new a(context);
        }
        return f359a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, Looper looper) {
        synchronized (f359a) {
            Object obj = this.d;
            if (obj == null) {
                b bVar = new b(iAssetPackManagerDownloadStatusCallback, looper);
                this.f360b.registerListener(bVar);
                this.d = bVar;
            } else {
                ((b) obj).a(iAssetPackManagerDownloadStatusCallback);
            }
            this.c.add(str);
            this.f360b.fetch(Collections.singletonList(str));
        }
    }

    static /* synthetic */ Object c(a aVar) {
        aVar.d = null;
        return null;
    }

    @Override // com.unity3d.player.e
    public final Object a(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        b bVar = new b(this, iAssetPackManagerDownloadStatusCallback);
        this.f360b.registerListener(bVar);
        return bVar;
    }

    @Override // com.unity3d.player.e
    public final String a(String str) {
        AssetPackLocation packLocation = this.f360b.getPackLocation(str);
        return packLocation == null ? "" : packLocation.assetsPath();
    }

    @Override // com.unity3d.player.e
    public final void a(Activity activity, IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback) {
        this.f360b.showCellularDataConfirmation(activity).addOnSuccessListener(new c(iAssetPackManagerMobileDataConfirmationCallback));
    }

    @Override // com.unity3d.player.e
    public final void a(Object obj) {
        if (obj instanceof b) {
            this.f360b.unregisterListener((b) obj);
        }
    }

    @Override // com.unity3d.player.e
    public final void a(String[] strArr) {
        this.f360b.cancel(Arrays.asList(strArr));
    }

    @Override // com.unity3d.player.e
    public final void a(String[] strArr, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        for (String str : strArr) {
            this.f360b.getPackStates(Collections.singletonList(str)).addOnCompleteListener(new d(iAssetPackManagerDownloadStatusCallback, str));
        }
    }

    @Override // com.unity3d.player.e
    public final void a(String[] strArr, IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback) {
        this.f360b.getPackStates(Arrays.asList(strArr)).addOnCompleteListener(new e(iAssetPackManagerStatusQueryCallback, strArr));
    }

    @Override // com.unity3d.player.e
    public final void b(String str) {
        this.f360b.removePack(str);
    }
}

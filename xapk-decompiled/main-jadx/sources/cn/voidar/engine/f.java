package cn.voidar.engine;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class f extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f158a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f159b = null;

    public interface a {
        void a(String str, boolean z);
    }

    public void a(Activity activity, a aVar) {
        this.f158a = aVar;
        this.f159b = activity;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f158a == null) {
            getFragmentManager().beginTransaction().remove(this).commit();
        } else {
            requestPermissions(getArguments().getStringArray("PermissionNames"), 15887);
        }
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 15887) {
            return;
        }
        for (int i2 = 0; i2 < strArr.length && i2 < iArr.length; i2++) {
            i.a().a("onRequestPermissionsResult permissions=" + strArr[i2] + " result = " + iArr[i2]);
            if (iArr[i2] == 0) {
                this.f158a.a(strArr[i2], true);
            } else {
                this.f158a.a(strArr[i2], false);
            }
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.remove(this);
        fragmentTransactionBeginTransaction.commit();
    }
}

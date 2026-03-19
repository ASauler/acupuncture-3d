package com.aptoide.sdk.billing;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;
import com.aptoide.sdk.billing.listeners.PayflowPriorityStream;
import com.aptoide.sdk.billing.managers.BillingLifecycleManager;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class RepositoryServiceConnection implements ServiceConnection, RepositoryConnection, PayflowPriorityStream.Consumer<ArrayList<PaymentFlowMethod>> {
    private final ConnectionLifeCycle connectionLifeCycle;
    private final Context context;
    private AptoideBillingClientStateListener listener;

    public RepositoryServiceConnection(Context context, ConnectionLifeCycle connectionLifeCycle) {
        this.context = context;
        this.connectionLifeCycle = connectionLifeCycle;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Logger.logInfo("Service connected.");
        Logger.logDebug("called with: name = [" + componentName + "], service = [" + iBinder + "]");
        this.connectionLifeCycle.onConnect(componentName, iBinder, this.listener);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        Logger.logInfo("Service disconnected.");
        Logger.logDebug("called with: name = [" + componentName + "]");
        this.connectionLifeCycle.onDisconnect(this.listener);
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        Logger.logInfo("Binding died.");
        this.connectionLifeCycle.onDisconnect(this.listener);
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        Logger.logInfo("Binding is null.");
        this.connectionLifeCycle.onDisconnect(this.listener);
    }

    @Override // com.aptoide.sdk.billing.RepositoryConnection
    public void startConnection(AptoideBillingClientStateListener aptoideBillingClientStateListener) {
        Logger.logInfo("Starting connection to the BillingService.");
        this.listener = aptoideBillingClientStateListener;
        WalletUtils.INSTANCE.startAnalytics(this.context.getPackageName());
        BillingLifecycleManager.setupBillingService(this.context);
        initializeObservableForPayflowPriorityChanges();
    }

    private void initializeObservableForPayflowPriorityChanges() {
        Logger.logInfo("Setup collector for PayflowPriorityStream.");
        PayflowPriorityStream.getInstance().collect(this);
    }

    @Override // com.aptoide.sdk.billing.RepositoryConnection
    public void endConnection() {
        Logger.logInfo("Ending connection.");
        BillingLifecycleManager.finishBillingService(this.context);
        PayflowPriorityStream.getInstance().stopCollecting();
        WalletBinderUtil.finishBillingRepository(this.context, this);
    }

    @Override // com.aptoide.sdk.billing.listeners.PayflowPriorityStream.Consumer
    public void accept(final ArrayList<PaymentFlowMethod> arrayList) {
        Logger.logInfo("New result received from PayflowPriorityStream.");
        if (arrayList != null) {
            Logger.logInfo(String.format("PaymentFlowMethods size: %s", Integer.valueOf(arrayList.size())));
            Iterator<PaymentFlowMethod> it = arrayList.iterator();
            while (it.hasNext()) {
                Logger.logInfo(it.next().toString());
            }
        } else {
            Logger.logInfo("PaymentFlowMethods is null.");
        }
        new Thread(new Runnable() { // from class: com.aptoide.sdk.billing.RepositoryServiceConnection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$accept$0(arrayList);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$accept$0(ArrayList arrayList) {
        WalletBinderUtil.initializeBillingRepository(this.context, this, arrayList);
    }
}

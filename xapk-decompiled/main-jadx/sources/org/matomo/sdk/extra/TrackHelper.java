package org.matomo.sdk.extra;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.Thread;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import net.lingala.zip4j.util.InternalZipConstants;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.QueryParams;
import org.matomo.sdk.TrackMe;
import org.matomo.sdk.Tracker;
import org.matomo.sdk.extra.DownloadTracker;
import org.matomo.sdk.tools.ActivityHelper;
import org.matomo.sdk.tools.CurrencyFormatter;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class TrackHelper {
    private static final String TAG = Matomo.tag(TrackHelper.class);
    protected final TrackMe mBaseTrackMe;

    private TrackHelper() {
        this(null);
    }

    private TrackHelper(TrackMe trackMe) {
        this.mBaseTrackMe = trackMe == null ? new TrackMe() : trackMe;
    }

    public static TrackHelper track() {
        return new TrackHelper();
    }

    public static TrackHelper track(TrackMe trackMe) {
        return new TrackHelper(trackMe);
    }

    static abstract class BaseEvent {
        private final TrackHelper mBaseBuilder;

        public abstract TrackMe build();

        BaseEvent(TrackHelper trackHelper) {
            this.mBaseBuilder = trackHelper;
        }

        TrackMe getBaseTrackMe() {
            return this.mBaseBuilder.mBaseTrackMe;
        }

        public void with(MatomoApplication matomoApplication) {
            with(matomoApplication.getTracker());
        }

        public void with(Tracker tracker) {
            tracker.track(build());
        }

        public boolean safelyWith(MatomoApplication matomoApplication) {
            return safelyWith(matomoApplication.getTracker());
        }

        public boolean safelyWith(Tracker tracker) {
            try {
                tracker.track(build());
                return true;
            } catch (IllegalArgumentException e) {
                Timber.e(e);
                return false;
            }
        }
    }

    public Screen screen(String str) {
        return new Screen(this, str);
    }

    public Screen screen(Activity activity) {
        String breadcrumbs = ActivityHelper.getBreadcrumbs(activity);
        return new Screen(this, ActivityHelper.breadcrumbsToPath(breadcrumbs)).title(breadcrumbs);
    }

    public static class Screen extends BaseEvent {
        private String mCampaignKeyword;
        private String mCampaignName;
        private final Map<Integer, String> mCustomDimensions;
        private final CustomVariables mCustomVariables;
        private final String mPath;
        private String mTitle;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        Screen(TrackHelper trackHelper, String str) {
            super(trackHelper);
            this.mCustomVariables = new CustomVariables();
            this.mCustomDimensions = new HashMap();
            this.mPath = str;
        }

        public Screen title(String str) {
            this.mTitle = str;
            return this;
        }

        public Screen dimension(int i, String str) {
            this.mCustomDimensions.put(Integer.valueOf(i), str);
            return this;
        }

        @Deprecated
        public Screen variable(int i, String str, String str2) {
            this.mCustomVariables.put(i, str, str2);
            return this;
        }

        public Screen campaign(String str, String str2) {
            this.mCampaignName = str;
            this.mCampaignKeyword = str2;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            if (this.mPath == null) {
                throw new IllegalArgumentException("Screen tracking requires a non-empty path");
            }
            TrackMe trackMe = new TrackMe(getBaseTrackMe()).set(QueryParams.URL_PATH, this.mPath).set(QueryParams.ACTION_NAME, this.mTitle).set(QueryParams.CAMPAIGN_NAME, this.mCampaignName).set(QueryParams.CAMPAIGN_KEYWORD, this.mCampaignKeyword);
            if (this.mCustomVariables.size() > 0) {
                trackMe.set(QueryParams.SCREEN_SCOPE_CUSTOM_VARIABLES, this.mCustomVariables.toString());
            }
            for (Map.Entry<Integer, String> entry : this.mCustomDimensions.entrySet()) {
                CustomDimension.setDimension(trackMe, entry.getKey().intValue(), entry.getValue());
            }
            return trackMe;
        }
    }

    public EventBuilder event(String str, String str2) {
        return new EventBuilder(this, str, str2);
    }

    public static class EventBuilder extends BaseEvent {
        private final String mAction;
        private final String mCategory;
        private String mName;
        private String mPath;
        private Float mValue;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        EventBuilder(TrackHelper trackHelper, String str, String str2) {
            super(trackHelper);
            this.mCategory = str;
            this.mAction = str2;
        }

        public EventBuilder path(String str) {
            this.mPath = str;
            return this;
        }

        public EventBuilder name(String str) {
            this.mName = str;
            return this;
        }

        public EventBuilder value(Float f) {
            this.mValue = f;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            TrackMe trackMe = new TrackMe(getBaseTrackMe()).set(QueryParams.URL_PATH, this.mPath).set(QueryParams.EVENT_CATEGORY, this.mCategory).set(QueryParams.EVENT_ACTION, this.mAction).set(QueryParams.EVENT_NAME, this.mName);
            if (this.mValue != null) {
                trackMe.set(QueryParams.EVENT_VALUE, this.mValue.floatValue());
            }
            return trackMe;
        }
    }

    public Goal goal(int i) {
        return new Goal(this, i);
    }

    public static class Goal extends BaseEvent {
        private final int mIdGoal;
        private Float mRevenue;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        Goal(TrackHelper trackHelper, int i) {
            super(trackHelper);
            this.mIdGoal = i;
        }

        public Goal revenue(Float f) {
            this.mRevenue = f;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            if (this.mIdGoal < 0) {
                throw new IllegalArgumentException("Goal id needs to be >=0");
            }
            TrackMe trackMe = new TrackMe(getBaseTrackMe()).set(QueryParams.GOAL_ID, this.mIdGoal);
            if (this.mRevenue != null) {
                trackMe.set(QueryParams.REVENUE, this.mRevenue.floatValue());
            }
            return trackMe;
        }
    }

    public Outlink outlink(URL url) {
        return new Outlink(this, url);
    }

    public static class Outlink extends BaseEvent {
        private final URL mURL;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        Outlink(TrackHelper trackHelper, URL url) {
            super(trackHelper);
            this.mURL = url;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            URL url = this.mURL;
            if (url == null || url.toExternalForm().length() == 0) {
                throw new IllegalArgumentException("Outlink tracking requires a non-empty URL");
            }
            if (!this.mURL.getProtocol().equals("http") && !this.mURL.getProtocol().equals("https") && !this.mURL.getProtocol().equals("ftp")) {
                throw new IllegalArgumentException("Only http|https|ftp is supported for outlinks");
            }
            return new TrackMe(getBaseTrackMe()).set(QueryParams.LINK, this.mURL.toExternalForm()).set(QueryParams.URL_PATH, this.mURL.toExternalForm());
        }
    }

    public Search search(String str) {
        return new Search(this, str);
    }

    public static class Search extends BaseEvent {
        private String mCategory;
        private Integer mCount;
        private final String mKeyword;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        Search(TrackHelper trackHelper, String str) {
            super(trackHelper);
            this.mKeyword = str;
        }

        public Search category(String str) {
            this.mCategory = str;
            return this;
        }

        public Search count(Integer num) {
            this.mCount = num;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            TrackMe trackMe = new TrackMe(getBaseTrackMe()).set(QueryParams.SEARCH_KEYWORD, this.mKeyword).set(QueryParams.SEARCH_CATEGORY, this.mCategory);
            if (this.mCount != null) {
                trackMe.set(QueryParams.SEARCH_NUMBER_OF_HITS, this.mCount.intValue());
            }
            return trackMe;
        }
    }

    public Download download(DownloadTracker downloadTracker) {
        return new Download(downloadTracker, this);
    }

    public Download download() {
        return new Download(null, this);
    }

    public static class Download {
        private final TrackHelper mBaseBuilder;
        private DownloadTracker mDownloadTracker;
        private DownloadTracker.Extra mExtra = new DownloadTracker.Extra.None();
        private boolean mForced = false;
        private String mVersion;

        Download(DownloadTracker downloadTracker, TrackHelper trackHelper) {
            this.mDownloadTracker = downloadTracker;
            this.mBaseBuilder = trackHelper;
        }

        public Download identifier(DownloadTracker.Extra extra) {
            this.mExtra = extra;
            return this;
        }

        public Download force() {
            this.mForced = true;
            return this;
        }

        public Download version(String str) {
            this.mVersion = str;
            return this;
        }

        public void with(Tracker tracker) {
            if (this.mDownloadTracker == null) {
                this.mDownloadTracker = new DownloadTracker(tracker);
            }
            String str = this.mVersion;
            if (str != null) {
                this.mDownloadTracker.setVersion(str);
            }
            if (this.mForced) {
                this.mDownloadTracker.trackNewAppDownload(this.mBaseBuilder.mBaseTrackMe, this.mExtra);
            } else {
                this.mDownloadTracker.trackOnce(this.mBaseBuilder.mBaseTrackMe, this.mExtra);
            }
        }
    }

    public ContentImpression impression(String str) {
        return new ContentImpression(this, str);
    }

    public static class ContentImpression extends BaseEvent {
        private final String mContentName;
        private String mContentPiece;
        private String mContentTarget;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        ContentImpression(TrackHelper trackHelper, String str) {
            super(trackHelper);
            this.mContentName = str;
        }

        public ContentImpression piece(String str) {
            this.mContentPiece = str;
            return this;
        }

        public ContentImpression target(String str) {
            this.mContentTarget = str;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            String str = this.mContentName;
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("Tracking content impressions requires a non-empty content-name");
            }
            return new TrackMe(getBaseTrackMe()).set(QueryParams.CONTENT_NAME, this.mContentName).set(QueryParams.CONTENT_PIECE, this.mContentPiece).set(QueryParams.CONTENT_TARGET, this.mContentTarget);
        }
    }

    public ContentInteraction interaction(String str, String str2) {
        return new ContentInteraction(this, str, str2);
    }

    public static class ContentInteraction extends BaseEvent {
        private final String mContentName;
        private String mContentPiece;
        private String mContentTarget;
        private final String mInteraction;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        ContentInteraction(TrackHelper trackHelper, String str, String str2) {
            super(trackHelper);
            this.mContentName = str;
            this.mInteraction = str2;
        }

        public ContentInteraction piece(String str) {
            this.mContentPiece = str;
            return this;
        }

        public ContentInteraction target(String str) {
            this.mContentTarget = str;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            String str = this.mContentName;
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("Content name needs to be non-empty");
            }
            String str2 = this.mInteraction;
            if (str2 == null || str2.length() == 0) {
                throw new IllegalArgumentException("Interaction name needs to be non-empty");
            }
            return new TrackMe(getBaseTrackMe()).set(QueryParams.CONTENT_NAME, this.mContentName).set(QueryParams.CONTENT_PIECE, this.mContentPiece).set(QueryParams.CONTENT_TARGET, this.mContentTarget).set(QueryParams.CONTENT_INTERACTION, this.mInteraction);
        }
    }

    public CartUpdate cartUpdate(int i) {
        return new CartUpdate(this, i);
    }

    public static class CartUpdate extends BaseEvent {
        private EcommerceItems mEcommerceItems;
        private final int mGrandTotal;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        CartUpdate(TrackHelper trackHelper, int i) {
            super(trackHelper);
            this.mGrandTotal = i;
        }

        public CartUpdate items(EcommerceItems ecommerceItems) {
            this.mEcommerceItems = ecommerceItems;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            if (this.mEcommerceItems == null) {
                this.mEcommerceItems = new EcommerceItems();
            }
            return new TrackMe(getBaseTrackMe()).set(QueryParams.GOAL_ID, 0).set(QueryParams.REVENUE, CurrencyFormatter.priceString(Integer.valueOf(this.mGrandTotal))).set(QueryParams.ECOMMERCE_ITEMS, this.mEcommerceItems.toJson());
        }
    }

    public Order order(String str, int i) {
        return new Order(this, str, i);
    }

    public static class Order extends BaseEvent {
        private Integer mDiscount;
        private EcommerceItems mEcommerceItems;
        private final int mGrandTotal;
        private final String mOrderId;
        private Integer mShipping;
        private Integer mSubTotal;
        private Integer mTax;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        Order(TrackHelper trackHelper, String str, int i) {
            super(trackHelper);
            this.mOrderId = str;
            this.mGrandTotal = i;
        }

        public Order subTotal(Integer num) {
            this.mSubTotal = num;
            return this;
        }

        public Order tax(Integer num) {
            this.mTax = num;
            return this;
        }

        public Order shipping(Integer num) {
            this.mShipping = num;
            return this;
        }

        public Order discount(Integer num) {
            this.mDiscount = num;
            return this;
        }

        public Order items(EcommerceItems ecommerceItems) {
            this.mEcommerceItems = ecommerceItems;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            if (this.mEcommerceItems == null) {
                this.mEcommerceItems = new EcommerceItems();
            }
            return new TrackMe(getBaseTrackMe()).set(QueryParams.GOAL_ID, 0).set(QueryParams.ORDER_ID, this.mOrderId).set(QueryParams.REVENUE, CurrencyFormatter.priceString(Integer.valueOf(this.mGrandTotal))).set(QueryParams.ECOMMERCE_ITEMS, this.mEcommerceItems.toJson()).set(QueryParams.SUBTOTAL, CurrencyFormatter.priceString(this.mSubTotal)).set(QueryParams.TAX, CurrencyFormatter.priceString(this.mTax)).set(QueryParams.SHIPPING, CurrencyFormatter.priceString(this.mShipping)).set(QueryParams.DISCOUNT, CurrencyFormatter.priceString(this.mDiscount));
        }
    }

    public Exception exception(Throwable th) {
        return new Exception(this, th);
    }

    public static class Exception extends BaseEvent {
        private String mDescription;
        private boolean mIsFatal;
        private final Throwable mThrowable;

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(Tracker tracker) {
            return super.safelyWith(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ boolean safelyWith(MatomoApplication matomoApplication) {
            return super.safelyWith(matomoApplication);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(Tracker tracker) {
            super.with(tracker);
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public /* bridge */ /* synthetic */ void with(MatomoApplication matomoApplication) {
            super.with(matomoApplication);
        }

        Exception(TrackHelper trackHelper, Throwable th) {
            super(trackHelper);
            this.mThrowable = th;
        }

        public Exception description(String str) {
            this.mDescription = str;
            return this;
        }

        public Exception fatal(boolean z) {
            this.mIsFatal = z;
            return this;
        }

        @Override // org.matomo.sdk.extra.TrackHelper.BaseEvent
        public TrackMe build() {
            String name;
            try {
                StackTraceElement stackTraceElement = this.mThrowable.getStackTrace()[0];
                name = stackTraceElement.getClassName() + InternalZipConstants.ZIP_FILE_SEPARATOR + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
            } catch (java.lang.Exception e) {
                Timber.tag(TrackHelper.TAG).w(e, "Couldn't get stack info", new Object[0]);
                name = this.mThrowable.getClass().getName();
            }
            return new TrackMe(getBaseTrackMe()).set(QueryParams.ACTION_NAME, "exception/" + (this.mIsFatal ? "fatal/" : "") + name + InternalZipConstants.ZIP_FILE_SEPARATOR + this.mDescription).set(QueryParams.EVENT_CATEGORY, "Exception").set(QueryParams.EVENT_ACTION, name).set(QueryParams.EVENT_NAME, this.mDescription).set(QueryParams.EVENT_VALUE, this.mIsFatal ? 1 : 0);
        }
    }

    public UncaughtExceptions uncaughtExceptions() {
        return new UncaughtExceptions(this);
    }

    public static class UncaughtExceptions {
        private final TrackHelper mBaseBuilder;

        UncaughtExceptions(TrackHelper trackHelper) {
            this.mBaseBuilder = trackHelper;
        }

        public Thread.UncaughtExceptionHandler with(Tracker tracker) {
            if (Thread.getDefaultUncaughtExceptionHandler() instanceof MatomoExceptionHandler) {
                throw new RuntimeException("Trying to wrap an existing MatomoExceptionHandler.");
            }
            MatomoExceptionHandler matomoExceptionHandler = new MatomoExceptionHandler(tracker, this.mBaseBuilder.mBaseTrackMe);
            Thread.setDefaultUncaughtExceptionHandler(matomoExceptionHandler);
            return matomoExceptionHandler;
        }
    }

    public AppTracking screens(Application application) {
        return new AppTracking(this, application);
    }

    public static class AppTracking {
        private final Application mApplication;
        private final TrackHelper mBaseBuilder;

        public AppTracking(TrackHelper trackHelper, Application application) {
            this.mBaseBuilder = trackHelper;
            this.mApplication = application;
        }

        public Application.ActivityLifecycleCallbacks with(final Tracker tracker) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: org.matomo.sdk.extra.TrackHelper.AppTracking.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    AppTracking.this.mBaseBuilder.screen(activity).with(tracker);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    if (activity == null || !activity.isTaskRoot()) {
                        return;
                    }
                    tracker.dispatch();
                }
            };
            this.mApplication.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            return activityLifecycleCallbacks;
        }
    }

    public Dimension dimension(int i, String str) {
        return new Dimension(this.mBaseTrackMe).dimension(i, str);
    }

    public static class Dimension extends TrackHelper {
        Dimension(TrackMe trackMe) {
            super(trackMe);
        }

        @Override // org.matomo.sdk.extra.TrackHelper
        public Dimension dimension(int i, String str) {
            CustomDimension.setDimension(this.mBaseTrackMe, i, str);
            return this;
        }
    }

    @Deprecated
    public VisitVariables visitVariables(int i, String str, String str2) {
        CustomVariables customVariables = new CustomVariables();
        customVariables.put(i, str, str2);
        return visitVariables(customVariables);
    }

    @Deprecated
    public VisitVariables visitVariables(CustomVariables customVariables) {
        return new VisitVariables(this, customVariables);
    }

    public static class VisitVariables extends TrackHelper {
        public VisitVariables(TrackHelper trackHelper, CustomVariables customVariables) {
            super(trackHelper.mBaseTrackMe);
            CustomVariables customVariables2 = new CustomVariables(this.mBaseTrackMe.get(QueryParams.VISIT_SCOPE_CUSTOM_VARIABLES));
            customVariables2.putAll(customVariables);
            this.mBaseTrackMe.set(QueryParams.VISIT_SCOPE_CUSTOM_VARIABLES, customVariables2.toString());
        }

        @Override // org.matomo.sdk.extra.TrackHelper
        public VisitVariables visitVariables(int i, String str, String str2) {
            CustomVariables customVariables = new CustomVariables(this.mBaseTrackMe.get(QueryParams.VISIT_SCOPE_CUSTOM_VARIABLES));
            customVariables.put(i, str, str2);
            this.mBaseTrackMe.set(QueryParams.VISIT_SCOPE_CUSTOM_VARIABLES, customVariables.toString());
            return this;
        }
    }
}

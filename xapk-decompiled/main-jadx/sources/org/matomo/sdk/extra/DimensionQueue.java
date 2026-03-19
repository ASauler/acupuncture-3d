package org.matomo.sdk.extra;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.matomo.sdk.Matomo;
import org.matomo.sdk.TrackMe;
import org.matomo.sdk.Tracker;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class DimensionQueue {
    private static final String TAG = Matomo.tag(DimensionQueue.class);
    private final List<CustomDimension> mOneTimeDimensions = new ArrayList();

    public DimensionQueue(Tracker tracker) {
        tracker.addTrackingCallback(new Tracker.Callback() { // from class: org.matomo.sdk.extra.DimensionQueue$$ExternalSyntheticLambda0
            @Override // org.matomo.sdk.Tracker.Callback
            public final TrackMe onTrack(TrackMe trackMe) {
                return this.f$0.onTrack(trackMe);
            }
        });
    }

    public void add(int i, String str) {
        this.mOneTimeDimensions.add(new CustomDimension(i, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TrackMe onTrack(TrackMe trackMe) {
        Iterator<CustomDimension> it = this.mOneTimeDimensions.iterator();
        while (it.hasNext()) {
            CustomDimension next = it.next();
            String dimension = CustomDimension.getDimension(trackMe, next.getId());
            if (dimension != null) {
                Timber.tag(TAG).d("Setting dimension %s to slot %d would overwrite %s, skipping!", next.getValue(), Integer.valueOf(next.getId()), dimension);
            } else {
                CustomDimension.setDimension(trackMe, next);
                it.remove();
            }
        }
        return trackMe;
    }
}

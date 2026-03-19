package org.matomo.sdk.dispatcher;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.matomo.sdk.Matomo;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class PacketFactory {
    public static final int PAGE_SIZE = 20;
    private static final String TAG = Matomo.tag(PacketFactory.class);
    private final String mApiUrl;

    public PacketFactory(String str) {
        this.mApiUrl = str;
    }

    public List<Packet> buildPackets(List<Event> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        if (list.size() == 1) {
            Packet packetBuildPacketForGet = buildPacketForGet(list.get(0));
            if (packetBuildPacketForGet == null) {
                return Collections.emptyList();
            }
            return Collections.singletonList(packetBuildPacketForGet);
        }
        ArrayList arrayList = new ArrayList((int) Math.ceil((((double) list.size()) * 1.0d) / 20.0d));
        int i = 0;
        while (i < list.size()) {
            int i2 = i + 20;
            List<Event> listSubList = list.subList(i, Math.min(i2, list.size()));
            Packet packetBuildPacketForGet2 = listSubList.size() == 1 ? buildPacketForGet(listSubList.get(0)) : buildPacketForPost(listSubList);
            if (packetBuildPacketForGet2 != null) {
                arrayList.add(packetBuildPacketForGet2);
            }
            i = i2;
        }
        return arrayList;
    }

    private Packet buildPacketForPost(List<Event> list) {
        if (list.isEmpty()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            Iterator<Event> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getEncodedQuery());
            }
            jSONObject.put("requests", jSONArray);
            return new Packet(this.mApiUrl, jSONObject, list.size());
        } catch (JSONException e) {
            Timber.tag(TAG).w(e, "Cannot create json object:\n%s", TextUtils.join(", ", list));
            return null;
        }
    }

    private Packet buildPacketForGet(Event event) {
        if (event.getEncodedQuery().isEmpty()) {
            return null;
        }
        return new Packet(this.mApiUrl + event);
    }
}

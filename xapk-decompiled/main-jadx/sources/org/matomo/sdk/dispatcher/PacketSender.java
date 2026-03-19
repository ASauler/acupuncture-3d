package org.matomo.sdk.dispatcher;

/* JADX INFO: loaded from: classes4.dex */
public interface PacketSender {
    boolean send(Packet packet);

    void setGzipData(boolean z);

    void setTimeout(long j);
}

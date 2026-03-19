package com.bumptech.glide.load;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class Options implements Key {

    /* JADX INFO: renamed from: values, reason: collision with root package name */
    private final ArrayMap<Option<?>, Object> f166values = new CachedHashCodeArrayMap();

    public void putAll(Options options) {
        this.f166values.putAll((SimpleArrayMap<? extends Option<?>, ? extends Object>) options.f166values);
    }

    public <T> Options set(Option<T> option, T t) {
        this.f166values.put(option, t);
        return this;
    }

    public <T> T get(Option<T> option) {
        return this.f166values.containsKey(option) ? (T) this.f166values.get(option) : option.getDefaultValue();
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.f166values.equals(((Options) obj).f166values);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f166values.hashCode();
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        for (int i = 0; i < this.f166values.size(); i++) {
            updateDiskCacheKey(this.f166values.keyAt(i), this.f166values.valueAt(i), messageDigest);
        }
    }

    public String toString() {
        return "Options{values=" + this.f166values + '}';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void updateDiskCacheKey(Option<T> option, Object obj, MessageDigest messageDigest) {
        option.update(obj, messageDigest);
    }
}

package com.luck.picture.lib.io;

/* JADX INFO: loaded from: classes2.dex */
interface ArrayAdapterInterface<T> {
    int getArrayLength(T t);

    int getElementSizeInBytes();

    String getTag();

    T newArray(int i);
}

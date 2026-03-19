package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.facebook.cache.disk.DefaultDiskStorage;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class SafeBrowsingData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SafeBrowsingData> CREATOR = new zzj();
    private static final String TAG = "SafeBrowsingData";
    private String zzm;
    private DataHolder zzn;
    private ParcelFileDescriptor zzo;
    private long zzp;
    private byte[] zzq;
    private byte[] zzr;
    private File zzs;

    public SafeBrowsingData() {
        this(null, null, null, 0L, null);
    }

    public SafeBrowsingData(long j, byte[] bArr) {
        this(null, null, null, j, bArr);
    }

    public SafeBrowsingData(String str) {
        this(str, null, null, 0L, null);
    }

    public SafeBrowsingData(String str, DataHolder dataHolder) {
        this(str, dataHolder, null, 0L, null);
    }

    public SafeBrowsingData(String str, DataHolder dataHolder, ParcelFileDescriptor parcelFileDescriptor, long j, byte[] bArr) {
        this.zzm = str;
        this.zzn = dataHolder;
        this.zzo = parcelFileDescriptor;
        this.zzp = j;
        this.zzq = bArr;
    }

    private final FileOutputStream zza() throws Throwable {
        Throwable th;
        File fileCreateTempFile;
        File file = this.zzs;
        if (file == null) {
            return null;
        }
        try {
            fileCreateTempFile = File.createTempFile("xlb", DefaultDiskStorage.FileType.TEMP, file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                this.zzo = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
                if (fileCreateTempFile != null) {
                    fileCreateTempFile.delete();
                }
                return fileOutputStream;
            } catch (IOException unused) {
                if (fileCreateTempFile != null) {
                    fileCreateTempFile.delete();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (fileCreateTempFile != null) {
                    fileCreateTempFile.delete();
                }
                throw th;
            }
        } catch (IOException unused2) {
            fileCreateTempFile = null;
        } catch (Throwable th3) {
            th = th3;
            fileCreateTempFile = null;
        }
    }

    private static void zza(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public byte[] getBlacklists() {
        if (this.zzo == null) {
            return null;
        }
        DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzo));
        try {
            byte[] bArr = new byte[dataInputStream.readInt()];
            dataInputStream.read(bArr);
            return bArr;
        } catch (IOException unused) {
            return null;
        } finally {
            zza(dataInputStream);
            this.zzo = null;
        }
    }

    public DataHolder getBlacklistsDataHolder() {
        return this.zzn;
    }

    public ParcelFileDescriptor getFileDescriptor() {
        return this.zzo;
    }

    public long getLastUpdateTimeMs() {
        return this.zzp;
    }

    public String getMetadata() {
        return this.zzm;
    }

    public byte[] getState() {
        return this.zzq;
    }

    public void setBlacklists(byte[] bArr) {
        this.zzr = bArr;
    }

    public void setTempDir(File file) {
        if (file != null) {
            this.zzs = file;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        boolean z;
        FileOutputStream fileOutputStreamZza;
        if (this.zzo != null || this.zzr == null || (fileOutputStreamZza = zza()) == null) {
            z = false;
        } else {
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStreamZza));
            try {
                dataOutputStream.writeInt(this.zzr.length);
                dataOutputStream.write(this.zzr);
                zza(dataOutputStream);
                z = true;
            } catch (IOException unused) {
                zza(dataOutputStream);
                z = false;
            } catch (Throwable th) {
                zza(dataOutputStream);
                throw th;
            }
        }
        if (z) {
            i |= 1;
        }
        zzj.zza(this, parcel, i);
        this.zzo = null;
    }
}

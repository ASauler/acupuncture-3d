package org.matomo.sdk.dispatcher;

import com.bumptech.glide.load.Key;
import com.google.common.net.HttpHeaders;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.zip.GZIPOutputStream;
import org.matomo.sdk.Matomo;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultPacketSender implements PacketSender {
    private static final String TAG = Matomo.tag(DefaultPacketSender.class);
    private long mTimeout = 5000;
    private boolean mGzip = false;

    private static boolean checkResponseCode(int i) {
        return i == 204 || i == 200;
    }

    @Override // org.matomo.sdk.dispatcher.PacketSender
    public boolean send(Packet packet) throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        OutputStream outputStream = null;
        GZIPOutputStream gZIPOutputStream = null;
        BufferedWriter bufferedWriter = null;
        BufferedReader bufferedReader = null;
        httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(packet.getTargetURL()).openConnection();
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            String str = TAG;
            Timber.tag(str).v("Connection is open to %s", httpURLConnection.getURL().toExternalForm());
            Timber.tag(str).v("Sending: %s", packet);
            httpURLConnection.setConnectTimeout((int) this.mTimeout);
            httpURLConnection.setReadTimeout((int) this.mTimeout);
            if (packet.getPostData() != null) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
                httpURLConnection.setRequestProperty("charset", "utf-8");
                String string = packet.getPostData().toString();
                if (this.mGzip) {
                    httpURLConnection.addRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            gZIPOutputStream2.write(string.getBytes(Charset.forName(UrlUtils.UTF8)));
                            gZIPOutputStream2.close();
                            try {
                                OutputStream outputStream2 = httpURLConnection.getOutputStream();
                                try {
                                    outputStream2.write(byteArrayOutputStream.toByteArray());
                                    if (outputStream2 != null) {
                                        try {
                                            outputStream2.close();
                                        } catch (IOException e2) {
                                            Timber.tag(TAG).d(e2, "Failed to close output stream after writing gzipped POST data.", new Object[0]);
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    outputStream = outputStream2;
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (IOException e3) {
                                            Timber.tag(TAG).d(e3, "Failed to close output stream after writing gzipped POST data.", new Object[0]);
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            gZIPOutputStream = gZIPOutputStream2;
                            if (gZIPOutputStream != null) {
                                gZIPOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } else {
                    try {
                        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), Key.STRING_CHARSET_NAME));
                        try {
                            bufferedWriter2.write(string);
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e4) {
                                Timber.tag(TAG).d(e4, "Failed to close output stream after writing POST data.", new Object[0]);
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e5) {
                                    Timber.tag(TAG).d(e5, "Failed to close output stream after writing POST data.", new Object[0]);
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                    }
                }
            } else {
                httpURLConnection.setDoOutput(false);
            }
            int responseCode = httpURLConnection.getResponseCode();
            Timber.tag(TAG).v("Transmission finished (code=%d).", Integer.valueOf(responseCode));
            boolean zCheckResponseCode = checkResponseCode(responseCode);
            if (zCheckResponseCode) {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        Timber.tag(TAG).d(e6, "Failed to close the error stream.", new Object[0]);
                    }
                }
            } else {
                StringBuilder sb = new StringBuilder();
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line != null) {
                                sb.append(line);
                            } else {
                                try {
                                    break;
                                } catch (IOException e7) {
                                    Timber.tag(TAG).d(e7, "Failed to close the error stream.", new Object[0]);
                                }
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e8) {
                                    Timber.tag(TAG).d(e8, "Failed to close the error stream.", new Object[0]);
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    Timber.tag(TAG).w("Transmission failed (code=%d, reason=%s)", Integer.valueOf(responseCode), sb.toString());
                } catch (Throwable th9) {
                    th = th9;
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return zCheckResponseCode;
        } catch (Exception e9) {
            e = e9;
            httpURLConnection2 = httpURLConnection;
            Timber.tag(TAG).e(e, "Transmission failed unexpectedly.", new Object[0]);
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return false;
        } catch (Throwable th10) {
            th = th10;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    @Override // org.matomo.sdk.dispatcher.PacketSender
    public void setTimeout(long j) {
        this.mTimeout = j;
    }

    @Override // org.matomo.sdk.dispatcher.PacketSender
    public void setGzipData(boolean z) {
        this.mGzip = z;
    }
}

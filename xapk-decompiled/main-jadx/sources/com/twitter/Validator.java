package com.twitter;

import com.twitter.Extractor;
import java.text.Normalizer;

/* JADX INFO: loaded from: classes2.dex */
public class Validator {
    public static final int MAX_TWEET_LENGTH = 140;
    protected int shortUrlLength = 23;
    protected int shortUrlLengthHttps = 23;
    private Extractor extractor = new Extractor();

    public int getTweetLength(String str) {
        String strNormalize = Normalizer.normalize(str, Normalizer.Form.NFC);
        int iCodePointCount = strNormalize.codePointCount(0, strNormalize.length());
        for (Extractor.Entity entity : this.extractor.extractURLsWithIndices(strNormalize)) {
            iCodePointCount = iCodePointCount + (entity.start - entity.end) + (entity.value.toLowerCase().startsWith("https://") ? this.shortUrlLengthHttps : this.shortUrlLength);
        }
        return iCodePointCount;
    }

    public boolean isValidTweet(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (c == 65534 || c == 65279 || c == 65535 || (c >= 8234 && c <= 8238)) {
                return false;
            }
        }
        return getTweetLength(str) <= 140;
    }

    public int getShortUrlLength() {
        return this.shortUrlLength;
    }

    public void setShortUrlLength(int i) {
        this.shortUrlLength = i;
    }

    public int getShortUrlLengthHttps() {
        return this.shortUrlLengthHttps;
    }

    public void setShortUrlLengthHttps(int i) {
        this.shortUrlLengthHttps = i;
    }
}

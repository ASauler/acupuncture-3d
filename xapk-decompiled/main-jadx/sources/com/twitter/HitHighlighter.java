package com.twitter;

import java.text.StringCharacterIterator;
import java.util.List;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: loaded from: classes2.dex */
public class HitHighlighter {
    public static final String DEFAULT_HIGHLIGHT_TAG = "em";
    protected String highlightTag = "em";

    public String highlight(String str, List<List<Integer>> list) {
        if (list == null || list.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator(str);
        boolean z = false;
        int i = 0;
        boolean z2 = true;
        for (char cFirst = stringCharacterIterator.first(); cFirst != 65535; cFirst = stringCharacterIterator.next()) {
            for (List<Integer> list2 : list) {
                if (list2.get(0).intValue() == i) {
                    sb.append(tag(false));
                    z = true;
                } else if (list2.get(1).intValue() == i) {
                    sb.append(tag(true));
                    z = false;
                }
            }
            if (cFirst == '<') {
                z2 = false;
            } else if (cFirst == '>' && !z2) {
                z2 = true;
            }
            if (z2) {
                i++;
            }
            sb.append(cFirst);
        }
        if (z) {
            sb.append(tag(true));
        }
        return sb.toString();
    }

    protected String tag(boolean z) {
        StringBuilder sb = new StringBuilder(this.highlightTag.length() + 3);
        sb.append("<");
        if (z) {
            sb.append(InternalZipConstants.ZIP_FILE_SEPARATOR);
        }
        sb.append(this.highlightTag).append(">");
        return sb.toString();
    }

    public String getHighlightTag() {
        return this.highlightTag;
    }

    public void setHighlightTag(String str) {
        this.highlightTag = str;
    }
}

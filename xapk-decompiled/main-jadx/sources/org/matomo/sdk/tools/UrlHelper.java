package org.matomo.sdk.tools;

import android.util.Pair;
import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

/* JADX INFO: loaded from: classes4.dex */
public class UrlHelper {
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";

    public static List<Pair<String, String>> parse(URI uri, String str) {
        List<Pair<String, String>> listEmptyList = Collections.emptyList();
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() <= 0) {
            return listEmptyList;
        }
        ArrayList arrayList = new ArrayList();
        parse(arrayList, new Scanner(rawQuery), str);
        return arrayList;
    }

    public static void parse(List<Pair<String, String>> list, Scanner scanner, String str) {
        scanner.useDelimiter(PARAMETER_SEPARATOR);
        while (scanner.hasNext()) {
            String[] strArrSplit = scanner.next().split(NAME_VALUE_SEPARATOR);
            if (strArrSplit.length == 0 || strArrSplit.length > 2) {
                throw new IllegalArgumentException("bad parameter");
            }
            list.add(new Pair<>(decode(strArrSplit[0], str), strArrSplit.length == 2 ? decode(strArrSplit[1], str) : null));
        }
    }

    private static String decode(String str, String str2) {
        if (str2 == null) {
            str2 = Key.STRING_CHARSET_NAME;
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }
}

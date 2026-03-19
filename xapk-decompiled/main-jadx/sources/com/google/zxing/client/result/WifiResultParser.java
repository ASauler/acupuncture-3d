package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.indicative.client.android.Indicative;

/* JADX INFO: loaded from: classes2.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String strSubstring;
        String strMatchSinglePrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("WIFI:") || (strMatchSinglePrefixedField = matchSinglePrefixedField("S:", (strSubstring = massagedText.substring(5)), ';', false)) == null || strMatchSinglePrefixedField.isEmpty()) {
            return null;
        }
        String strMatchSinglePrefixedField2 = matchSinglePrefixedField("P:", strSubstring, ';', false);
        String strMatchSinglePrefixedField3 = matchSinglePrefixedField("T:", strSubstring, ';', false);
        if (strMatchSinglePrefixedField3 == null) {
            strMatchSinglePrefixedField3 = "nopass";
        }
        return new WifiParsedResult(strMatchSinglePrefixedField3, strMatchSinglePrefixedField, strMatchSinglePrefixedField2, Boolean.parseBoolean(matchSinglePrefixedField("H:", strSubstring, ';', false)), matchSinglePrefixedField("I:", strSubstring, ';', false), matchSinglePrefixedField(Indicative.Alias.PAYLOAD_PREFIX, strSubstring, ';', false), matchSinglePrefixedField("E:", strSubstring, ';', false), matchSinglePrefixedField("H:", strSubstring, ';', false));
    }
}

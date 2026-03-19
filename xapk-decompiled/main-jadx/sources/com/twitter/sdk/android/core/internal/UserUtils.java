package com.twitter.sdk.android.core.internal;

import android.text.TextUtils;
import com.twitter.sdk.android.core.models.User;

/* JADX INFO: loaded from: classes2.dex */
public final class UserUtils {
    private UserUtils() {
    }

    public enum AvatarSize {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");

        private final String suffix;

        AvatarSize(String str) {
            this.suffix = str;
        }

        String getSuffix() {
            return this.suffix;
        }
    }

    public static String getProfileImageUrlHttps(User user, AvatarSize avatarSize) {
        if (user == null || user.profileImageUrlHttps == null) {
            return null;
        }
        String str = user.profileImageUrlHttps;
        if (avatarSize == null || str == null) {
            return str;
        }
        int i = AnonymousClass1.$SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[avatarSize.ordinal()];
        return (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) ? str.replace(AvatarSize.NORMAL.getSuffix(), avatarSize.getSuffix()) : str;
    }

    /* JADX INFO: renamed from: com.twitter.sdk.android.core.internal.UserUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize;

        static {
            int[] iArr = new int[AvatarSize.values().length];
            $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize = iArr;
            try {
                iArr[AvatarSize.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.BIGGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.MINI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.ORIGINAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.REASONABLY_SMALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static CharSequence formatScreenName(CharSequence charSequence) {
        return TextUtils.isEmpty(charSequence) ? "" : charSequence.charAt(0) == '@' ? charSequence : "@" + ((Object) charSequence);
    }
}

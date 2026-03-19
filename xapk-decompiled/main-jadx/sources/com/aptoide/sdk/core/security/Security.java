package com.aptoide.sdk.core.security;

import com.aptoide.sdk.core.logger.Logger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class Security {
    private static final String KEY_FACTORY_ALGORITHM = "RSA";
    private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";

    public static boolean verifyPurchase(byte[] bArr, String str, byte[] bArr2) {
        PublicKey publicKeyGeneratePublicKey;
        if (str.isEmpty() || bArr.length <= 0 || bArr2.length <= 0 || (publicKeyGeneratePublicKey = generatePublicKey(bArr)) == null) {
            return false;
        }
        return verify(publicKeyGeneratePublicKey, str, bArr2);
    }

    public static PublicKey generatePublicKey(byte[] bArr) {
        try {
            return KeyFactory.getInstance(KEY_FACTORY_ALGORITHM).generatePublic(new X509EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            Logger.logError("Failed to generate public key: " + e);
            return null;
        }
    }

    public static boolean verify(PublicKey publicKey, String str, byte[] bArr) {
        try {
            Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM);
            signature.initVerify(publicKey);
            signature.update(str.getBytes());
            if (signature.verify(bArr)) {
                return true;
            }
            Logger.logError("Signature verification failed.");
            return false;
        } catch (InvalidKeyException e) {
            Logger.logError("Invalid key specification.", e);
            return false;
        } catch (NoSuchAlgorithmException e2) {
            Logger.logError("NoSuchAlgorithmException.", e2);
            return false;
        } catch (SignatureException e3) {
            Logger.logError("Signature exception.", e3);
            return false;
        }
    }
}

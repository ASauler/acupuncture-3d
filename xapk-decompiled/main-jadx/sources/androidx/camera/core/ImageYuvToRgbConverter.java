package androidx.camera.core;

import android.view.Surface;
import androidx.camera.core.impl.ImageReaderProxy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class ImageYuvToRgbConverter {
    private static final String TAG = "ImageYuvToRgbConverter";

    enum Result {
        UNKNOWN,
        SUCCESS,
        ERROR_FORMAT,
        ERROR_CONVERSION
    }

    private static native int convertAndroid420ToABGR(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, int i4, Surface surface, int i5, int i6, int i7);

    static {
        System.loadLibrary("yuv_to_rgb_jni");
    }

    private ImageYuvToRgbConverter() {
    }

    public static ImageProxy convertYUVToRGB(ImageProxy imageProxy, ImageReaderProxy imageReaderProxy) {
        if (!isSupportedYUVFormat(imageProxy)) {
            Logger.e(TAG, "Unsupported format for YUV to RGB");
            return null;
        }
        Result resultConvertYUVToRGBInternal = convertYUVToRGBInternal(imageProxy, imageReaderProxy.getSurface());
        if (resultConvertYUVToRGBInternal == Result.ERROR_CONVERSION) {
            Logger.e(TAG, "YUV to RGB conversion failure");
            return null;
        }
        if (resultConvertYUVToRGBInternal == Result.ERROR_FORMAT) {
            Logger.e(TAG, "Unsupported format for YUV to RGB");
            return null;
        }
        ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
        if (imageProxyAcquireLatestImage != null) {
            imageProxy.close();
        }
        return imageProxyAcquireLatestImage;
    }

    private static boolean isSupportedYUVFormat(ImageProxy imageProxy) {
        return imageProxy.getFormat() == 35 && imageProxy.getPlanes().length == 3;
    }

    private static Result convertYUVToRGBInternal(ImageProxy imageProxy, Surface surface) {
        if (!isSupportedYUVFormat(imageProxy)) {
            return Result.ERROR_FORMAT;
        }
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        if (convertAndroid420ToABGR(imageProxy.getPlanes()[0].getBuffer(), imageProxy.getPlanes()[0].getRowStride(), imageProxy.getPlanes()[1].getBuffer(), imageProxy.getPlanes()[1].getRowStride(), imageProxy.getPlanes()[2].getBuffer(), imageProxy.getPlanes()[2].getRowStride(), imageProxy.getPlanes()[1].getPixelStride(), surface, width, height, 0) != 0) {
            return Result.ERROR_CONVERSION;
        }
        return Result.SUCCESS;
    }
}

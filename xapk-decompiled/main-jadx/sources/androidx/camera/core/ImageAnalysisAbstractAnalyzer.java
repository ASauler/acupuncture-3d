package androidx.camera.core;

import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.os.OperationCanceledException;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
abstract class ImageAnalysisAbstractAnalyzer implements ImageReaderProxy.OnImageAvailableListener {
    private static final String TAG = "ImageAnalysisAnalyzer";
    private ImageReaderProxy mRGBImageReaderProxy;
    private volatile int mRelativeRotation;
    private ImageAnalysis.Analyzer mSubscribedAnalyzer;
    private Executor mUserExecutor;
    private volatile int mOutputImageFormat = 1;
    private final Object mAnalyzerLock = new Object();
    protected boolean mIsAttached = true;

    abstract ImageProxy acquireImage(ImageReaderProxy imageReaderProxy);

    abstract void clearCache();

    abstract void onValidImageAvailable(ImageProxy imageProxy);

    ImageAnalysisAbstractAnalyzer() {
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void onImageAvailable(ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy imageProxyAcquireImage = acquireImage(imageReaderProxy);
            if (imageProxyAcquireImage != null) {
                onValidImageAvailable(imageProxyAcquireImage);
            }
        } catch (IllegalStateException e) {
            Logger.e(TAG, "Failed to acquire image.", e);
        }
    }

    ListenableFuture<Void> analyzeImage(final ImageProxy imageProxy) {
        final Executor executor;
        final ImageAnalysis.Analyzer analyzer;
        ImageReaderProxy imageReaderProxy;
        synchronized (this.mAnalyzerLock) {
            executor = this.mUserExecutor;
            analyzer = this.mSubscribedAnalyzer;
            imageReaderProxy = this.mRGBImageReaderProxy;
        }
        if (analyzer != null && executor != null && this.mIsAttached) {
            final ImageProxy imageProxyConvertYUVToRGB = (this.mOutputImageFormat != 2 || imageReaderProxy == null) ? null : ImageYuvToRgbConverter.convertYUVToRGB(imageProxy, imageReaderProxy);
            return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.ImageAnalysisAbstractAnalyzer$$ExternalSyntheticLambda0
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return this.f$0.m19x9959ff20(executor, imageProxy, analyzer, imageProxyConvertYUVToRGB, completer);
                }
            });
        }
        return Futures.immediateFailedFuture(new OperationCanceledException("No analyzer or executor currently set."));
    }

    /* JADX INFO: renamed from: lambda$analyzeImage$1$androidx-camera-core-ImageAnalysisAbstractAnalyzer, reason: not valid java name */
    /* synthetic */ Object m19x9959ff20(Executor executor, final ImageProxy imageProxy, final ImageAnalysis.Analyzer analyzer, final ImageProxy imageProxy2, final CallbackToFutureAdapter.Completer completer) throws Exception {
        executor.execute(new Runnable() { // from class: androidx.camera.core.ImageAnalysisAbstractAnalyzer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m18x6b8164c1(imageProxy, analyzer, imageProxy2, completer);
            }
        });
        return "analyzeImage";
    }

    /* JADX INFO: renamed from: lambda$analyzeImage$0$androidx-camera-core-ImageAnalysisAbstractAnalyzer, reason: not valid java name */
    /* synthetic */ void m18x6b8164c1(ImageProxy imageProxy, ImageAnalysis.Analyzer analyzer, ImageProxy imageProxy2, CallbackToFutureAdapter.Completer completer) {
        if (this.mIsAttached) {
            ImageInfo imageInfoCreate = ImmutableImageInfo.create(imageProxy.getImageInfo().getTagBundle(), imageProxy.getImageInfo().getTimestamp(), this.mRelativeRotation);
            if (imageProxy2 != null) {
                imageProxy = imageProxy2;
            }
            analyzer.analyze(new SettableImageProxy(imageProxy, imageInfoCreate));
            completer.set(null);
            return;
        }
        completer.setException(new OperationCanceledException("ImageAnalysis is detached"));
    }

    void setRelativeRotation(int i) {
        this.mRelativeRotation = i;
    }

    void setOutputImageFormat(int i) {
        this.mOutputImageFormat = i;
    }

    void setRGBImageReaderProxy(ImageReaderProxy imageReaderProxy) {
        synchronized (this.mAnalyzerLock) {
            this.mRGBImageReaderProxy = imageReaderProxy;
        }
    }

    void setAnalyzer(Executor executor, ImageAnalysis.Analyzer analyzer) {
        synchronized (this.mAnalyzerLock) {
            if (analyzer == null) {
                clearCache();
                this.mSubscribedAnalyzer = analyzer;
                this.mUserExecutor = executor;
            } else {
                this.mSubscribedAnalyzer = analyzer;
                this.mUserExecutor = executor;
            }
        }
    }

    void attach() {
        this.mIsAttached = true;
    }

    void detach() {
        this.mIsAttached = false;
        clearCache();
    }
}

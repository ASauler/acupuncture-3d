package com.swmansion.gesturehandler;

/* JADX INFO: loaded from: classes2.dex */
public interface GestureHandlerInteractionController {
    boolean shouldHandlerBeCancelledBy(GestureHandler gestureHandler, GestureHandler gestureHandler2);

    boolean shouldRecognizeSimultaneously(GestureHandler gestureHandler, GestureHandler gestureHandler2);

    boolean shouldRequireHandlerToWaitForFailure(GestureHandler gestureHandler, GestureHandler gestureHandler2);

    boolean shouldWaitForHandlerFailure(GestureHandler gestureHandler, GestureHandler gestureHandler2);
}

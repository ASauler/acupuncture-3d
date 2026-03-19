package cn.voidar.engine.a;

import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f141a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f142b;
    private e c;
    private ByteBuffer d;
    private final float[] e;
    private final float[] f;
    private c g;

    public d() {
        byte[] bArr = {-1, 1, -1, -1, 1, 1, 1, -1};
        this.f142b = bArr;
        float[] fArr = new float[16];
        this.e = fArr;
        float[] fArr2 = new float[16];
        this.f = fArr2;
        if (this.c != null) {
            this.c = null;
        }
        this.g = c.a();
        e eVar = new e(this.g);
        this.c = eVar;
        eVar.a("uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}", "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}");
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(8);
        this.d = byteBufferAllocateDirect;
        byteBufferAllocateDirect.put(bArr).position(0);
        Matrix.setRotateM(fArr, 0, 0.0f, 0.0f, 0.0f, 1.0f);
        Matrix.setIdentityM(fArr2, 0);
        this.g.a("FullFrameTexture");
    }

    private void b(int i) {
        GLES20.glVertexAttribPointer(i, 2, 5120, false, 0, (Buffer) this.d);
        GLES20.glEnableVertexAttribArray(i);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void a(int i) {
        this.c.a();
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        int iA = this.c.a("uOrientationM");
        int iA2 = this.c.a("uTransformM");
        GLES20.glUniformMatrix4fv(iA, 1, false, this.e, 0);
        GLES20.glUniformMatrix4fv(iA2, 1, false, this.f, 0);
        b(this.c.a("aPosition"));
        this.c.b();
    }
}

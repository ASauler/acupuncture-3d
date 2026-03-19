package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.luck.picture.lib.config.PictureMimeType;
import com.spire.presentation.FileFormat;
import com.spire.presentation.IAudio;
import com.spire.presentation.IAutoShape;
import com.spire.presentation.IShape;
import com.spire.presentation.ISlide;
import com.spire.presentation.IVideo;
import com.spire.presentation.PlaceholderType;
import com.spire.presentation.Presentation;
import com.spire.presentation.Shape;
import com.spire.presentation.SlidePicture;
import com.spire.presentation.collections.AnimationEffectCollection;
import com.spire.presentation.collections.SlideCollection;
import com.spire.presentation.drawing.animation.AnimationEffect;
import com.spire.presentation.drawing.animation.AnimationTriggerType;
import com.spire.presentation.drawing.animation.TimeNodePresetClassType;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.imageio.ImageIO;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import utils.zipClass;
import values.Common_Value;
import values.Constants;
import values.ConvertPPT;
import values.SHAPE_TYPE;

/* JADX INFO: loaded from: classes.dex */
public class spireDemo {
    public static String folderDir = "result/";
    public static String pptDir = "testppt.pptx";
    public List<Boolean> ShapesDisplay;
    public List<SHAPE_TYPE> ShapesType;
    public List<IShape> animationShaps;
    Presentation destPresentation;
    public String page_dir;
    Presentation ppt;
    List<String> splitFileGroup;
    Presentation splitppt;
    int pageNum = 0;
    public String vslFileName = "";
    public String destFolder = "";
    public String exp_PPT_format_path = "";

    public String testUnity(String str) {
        System.out.println("接收到参数==" + str);
        return str;
    }

    public void pptSplit(String str, String str2) throws Exception {
        System.out.println("开始拆分ppt");
        this.destFolder = str2;
        this.splitFileGroup = new ArrayList();
        Presentation presentation = new Presentation();
        this.ppt = presentation;
        presentation.loadFromFile(str);
        String str3 = "";
        File file = new File("");
        if (file.exists()) {
            file.isDirectory();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        int i = 0;
        for (int i2 = 0; i2 < this.ppt.getSlides().getCount(); i2++) {
            if (i == 0) {
                str3 = str2 + "\\TempPPTX\\" + i2 + ".pptx";
                Presentation presentation2 = new Presentation();
                this.splitppt = presentation2;
                presentation2.getSlides().removeAt(0);
            }
            this.splitppt.getSlides().append(this.ppt.getSlides().get(i2));
            i++;
            if (i >= 3 || i2 == this.ppt.getSlides().getCount() - 1) {
                this.splitFileGroup.add(str3);
                this.splitppt.saveToFile(str3, FileFormat.PPTX_2013);
                i = 0;
            }
        }
        System.out.println("拆分ppt完成");
    }

    public void produce_PPT_xml_file(String str, ConvertPPT convertPPT) throws Exception {
        if (this.splitFileGroup.size() < 1) {
            return;
        }
        System.out.println("开始转换ppt");
        this.vslFileName = convertPPT.vslFileName;
        this.exp_PPT_format_path = convertPPT.exp_PPT_format_path;
        Document documentNewDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
        documentNewDocument.setXmlStandalone(true);
        Element elementCreateElement = documentNewDocument.createElement("SlideDoc");
        this.pageNum = 1;
        for (int i = 0; i < this.splitFileGroup.size(); i++) {
            if (!openPPT(this.splitFileGroup.get(i))) {
                return;
            }
            if (i == 0) {
                elementCreateElement.setAttribute("name", str);
                elementCreateElement.setAttribute("width", String.valueOf(this.destPresentation.getSlideSize().getSize().getWidth()));
                elementCreateElement.setAttribute("height", String.valueOf(this.destPresentation.getSlideSize().getSize().getHeight()));
                elementCreateElement.setAttribute("createTime", new SimpleDateFormat("yyyy/MM/dd").format(new Date()));
                documentNewDocument.appendChild(elementCreateElement);
            }
            SlideCollection slides = this.destPresentation.getSlides();
            for (int i2 = 0; i2 < slides.getCount(); i2++) {
                initSlide(slides.get(i2));
                this.page_dir = convertPPT.exp_PPT_format_path + "\\" + this.pageNum;
                File file = new File(this.page_dir);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String slideTitle = getSlideTitle(slides.get(i2));
                Element elementCreateElement2 = documentNewDocument.createElement("Slide");
                elementCreateElement2.setAttribute("SlideName", slideTitle);
                elementCreateElement2.setAttribute("pageNum", String.valueOf(this.pageNum));
                elementCreateElement.appendChild(elementCreateElement2);
                add_model_info_to_xml(slides.get(i2), documentNewDocument, elementCreateElement2);
                add_video_info_to_xml(slides.get(i2), documentNewDocument, elementCreateElement2);
                add_audio_info_to_xml(slides.get(i2), documentNewDocument, elementCreateElement2);
                createPicturesforShapes(slides.get(i2), documentNewDocument, elementCreateElement2);
                add_animation_list_to_xml(slides.get(i2), documentNewDocument, elementCreateElement2);
                add_background_info_to_xml(slides.get(i2), documentNewDocument, elementCreateElement2);
                this.pageNum++;
            }
            closePPT();
        }
        Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
        transformerNewTransformer.setOutputProperty("indent", "yes");
        transformerNewTransformer.transform(new DOMSource(documentNewDocument), new StreamResult(new File(ConvertPPT.outputfile)));
        zipDIR();
        File file2 = new File(convertPPT.exp_PPT_format_path);
        if (file2.exists()) {
            file2.delete();
        }
        System.out.println("转化成功");
    }

    public boolean openPPT(String str) throws Exception {
        Presentation presentation = new Presentation();
        this.destPresentation = presentation;
        presentation.loadFromFile(str);
        return this.destPresentation != null;
    }

    public void initSlide(ISlide iSlide) {
        this.animationShaps = new ArrayList();
        this.ShapesDisplay = new ArrayList();
        this.ShapesType = new ArrayList();
        if (iSlide != null) {
            for (int i = 0; i < iSlide.getShapes().getCount(); i++) {
                this.ShapesDisplay.add(true);
                this.ShapesType.add(SHAPE_TYPE.Normal);
            }
        }
    }

    public String getSlideTitle(ISlide iSlide) {
        String text;
        int i = 0;
        while (true) {
            if (i >= iSlide.getShapes().getCount()) {
                text = "";
                break;
            }
            IAutoShape iAutoShape = iSlide.getShapes().get(i);
            try {
                if (iAutoShape.getPlaceholder().getType() == PlaceholderType.CENTERED_TITLE || iAutoShape.getPlaceholder().getType() == PlaceholderType.TITLE) {
                    text = iAutoShape.getTextFrame().getText();
                    break;
                }
            } catch (Exception unused) {
            }
            i++;
        }
        return (text == "" || text == null) ? "第" + this.pageNum + "页" : text;
    }

    public void add_model_info_to_xml(ISlide iSlide, Document document, Element element) throws Exception {
        int i = 0;
        for (int i2 = 0; i2 < iSlide.getShapes().getCount(); i2++) {
            SlidePicture slidePicture = iSlide.getShapes().get(i2);
            if (slidePicture instanceof SlidePicture) {
                SlidePicture slidePicture2 = slidePicture;
                String str = Constants.get_Vesal_Model_Name(slidePicture2.getAlternativeText());
                if (str != "" && str != null) {
                    ImageIO.write(slidePicture2.getPictureFill().getPicture().getEmbedImage().getImage(), "PNG", new File(String.format(this.page_dir + "\\" + ("MOD_" + i2 + PictureMimeType.PNG), new Object[0])));
                    this.ShapesType.set(i2, SHAPE_TYPE.MODEL);
                    Element elementCreateElement = document.createElement(ExifInterface.TAG_MODEL);
                    elementCreateElement.setAttribute("id", String.valueOf(i));
                    elementCreateElement.setAttribute("shapeId", String.valueOf(i2));
                    elementCreateElement.setAttribute("modelId", str);
                    elementCreateElement.setAttribute("x", String.valueOf(slidePicture.getLeft()));
                    elementCreateElement.setAttribute("y", String.valueOf(slidePicture.getTop()));
                    elementCreateElement.setAttribute("w", String.valueOf(slidePicture.getWidth()));
                    elementCreateElement.setAttribute("h", String.valueOf(slidePicture.getHeight()));
                    element.appendChild(elementCreateElement);
                    i++;
                }
            }
        }
    }

    public void add_video_info_to_xml(ISlide iSlide, Document document, Element element) throws Exception {
        Element elementCreateElement = document.createElement("Videos");
        element.appendChild(elementCreateElement);
        int i = 0;
        for (int i2 = 0; i2 < iSlide.getShapes().getCount(); i2++) {
            IShape iShape = iSlide.getShapes().get(i2);
            if (iShape instanceof IVideo) {
                this.ShapesType.set(i2, SHAPE_TYPE.VIDEO);
                String str = "Meida_" + String.valueOf(i2) + ".mp4";
                if (iSlide.getShapes().get(i2).getEmbeddedVideoData() != null) {
                    System.out.println("保存视频");
                    iSlide.getShapes().get(i2).getEmbeddedVideoData().saveToFile(this.page_dir + "\\" + str);
                    Element elementCreateElement2 = document.createElement("Video");
                    elementCreateElement2.setAttribute("id", String.valueOf(i));
                    elementCreateElement2.setAttribute("shapeId", String.valueOf(i2));
                    elementCreateElement2.setAttribute("x", String.valueOf(iShape.getLeft()));
                    elementCreateElement2.setAttribute("y", String.valueOf(iShape.getTop()));
                    elementCreateElement2.setAttribute("w", String.valueOf(iShape.getWidth()));
                    elementCreateElement2.setAttribute("h", String.valueOf(iShape.getHeight()));
                    elementCreateElement2.setAttribute("Filename", str);
                    elementCreateElement2.setAttribute("isPlayAudio", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    elementCreateElement2.setAttribute("StartPoint", String.valueOf(0));
                    elementCreateElement.appendChild(elementCreateElement2);
                    i++;
                } else {
                    System.out.println("未找到视频");
                }
            }
        }
    }

    public void add_audio_info_to_xml(ISlide iSlide, Document document, Element element) throws Exception {
        Element elementCreateElement = document.createElement("Audios");
        element.appendChild(elementCreateElement);
        int i = 0;
        for (int i2 = 0; i2 < iSlide.getShapes().getCount(); i2++) {
            IAudio iAudio = iSlide.getShapes().get(i2);
            if (iAudio instanceof IAudio) {
                this.ShapesType.set(i2, SHAPE_TYPE.ADUIO);
                String str = "Meida_" + String.valueOf(i2) + PictureMimeType.MP3;
                if (iAudio.isEmbedded()) {
                    System.out.println("保存音频");
                    iSlide.getShapes().get(i2).getData().saveToFile(this.page_dir + "\\" + str);
                    Element elementCreateElement2 = document.createElement("Audio");
                    elementCreateElement2.setAttribute("id", String.valueOf(i));
                    elementCreateElement2.setAttribute("shapeId", String.valueOf(i2));
                    elementCreateElement2.setAttribute("Filename", str);
                    elementCreateElement2.setAttribute("StartPoint", String.valueOf(0));
                    elementCreateElement.appendChild(elementCreateElement2);
                    i++;
                }
            }
        }
    }

    public void createPicturesforShapes(ISlide iSlide, Document document, Element element) throws Exception {
        Element elementCreateElement = document.createElement("Images");
        element.appendChild(elementCreateElement);
        int i = 0;
        for (int i2 = 0; i2 < iSlide.getShapes().getCount(); i2++) {
            IShape iShape = iSlide.getShapes().get(i2);
            if (iShape.getLeft() != 10.0d && iShape.getTop() != 20.0d) {
                String str = "ANM_" + i2 + PictureMimeType.PNG;
                if (this.ShapesType.get(i2) == SHAPE_TYPE.Normal) {
                    System.out.println("slide==" + iSlide + ",slide.getShapes()=" + iSlide.getShapes());
                    ImageIO.write(iSlide.getShapes().saveAsImage(i2), "PNG", new File(String.format(this.page_dir + "\\" + str, new Object[0])));
                    Element elementCreateElement2 = document.createElement("Image");
                    elementCreateElement2.setAttribute("id", String.valueOf(i));
                    elementCreateElement2.setAttribute("shapeId", String.valueOf(i2));
                    elementCreateElement2.setAttribute("x", String.valueOf(iShape.getLeft()));
                    elementCreateElement2.setAttribute("y", String.valueOf(iShape.getTop()));
                    elementCreateElement2.setAttribute("w", String.valueOf(iShape.getWidth()));
                    elementCreateElement2.setAttribute("h", String.valueOf(iShape.getHeight()));
                    elementCreateElement2.setAttribute("Filename", str);
                    elementCreateElement.appendChild(elementCreateElement2);
                    i++;
                }
            }
        }
    }

    public void add_animation_list_to_xml(ISlide iSlide, Document document, Element element) throws Exception {
        Element element2;
        spireDemo spiredemo = this;
        Document document2 = document;
        Element elementCreateElement = document2.createElement("Animtions");
        element.appendChild(elementCreateElement);
        getAnimationShapes(iSlide);
        int i = 0;
        int i2 = 0;
        while (i < iSlide.getShapes().getCount()) {
            IShape iShape = iSlide.getShapes().get(i);
            Element element3 = elementCreateElement;
            if (iShape.getLeft() == 10.0d || iShape.getTop() == 20.0d || !spiredemo.ShapesDisplay.get(i).booleanValue()) {
                element2 = element3;
            } else {
                Element elementCreateElement2 = document2.createElement("Animation");
                elementCreateElement2.setAttribute("id", String.valueOf(i2));
                elementCreateElement2.setAttribute("shapeId", String.valueOf(i));
                elementCreateElement2.setAttribute("action", Constants.Vesal_Anim_Action_Entr);
                elementCreateElement2.setAttribute("type", "noClick");
                elementCreateElement2.setAttribute("waittime", AppEventsConstants.EVENT_PARAM_VALUE_NO);
                element2 = element3;
                element2.appendChild(elementCreateElement2);
                i2++;
            }
            i++;
            elementCreateElement = element2;
        }
        Element element4 = elementCreateElement;
        AnimationEffectCollection mainSequence = iSlide.getTimeline().getMainSequence();
        int count = mainSequence.getCount();
        int i3 = 0;
        while (i3 < count) {
            int i4 = count;
            Shape shapeTarget = mainSequence.get(i3).getShapeTarget();
            AnimationEffect animationEffect = mainSequence.get(i3);
            AnimationEffectCollection animationEffectCollection = mainSequence;
            AnimationTriggerType triggerType = animationEffect.getTiming().getTriggerType();
            int i5 = i3;
            Element elementCreateElement3 = document2.createElement("Animation");
            elementCreateElement3.setAttribute("id", String.valueOf(i2));
            elementCreateElement3.setAttribute("shapeId", String.valueOf(spiredemo.getShapeID(shapeTarget, iSlide)));
            int i6 = AnonymousClass1.$SwitchMap$com$spire$presentation$drawing$animation$TimeNodePresetClassType[animationEffect.getPresetClassType().ordinal()];
            if (i6 == 1) {
                elementCreateElement3.setAttribute("action", Constants.Vesal_Anim_Action_Entr);
            } else if (i6 == 2) {
                elementCreateElement3.setAttribute("action", Constants.Vesal_Anim_Action_Exit);
            } else if (i6 == 3) {
                elementCreateElement3.setAttribute("action", Constants.Vesal_Anim_Action_Emph);
            } else if (shapeTarget instanceof IVideo) {
                elementCreateElement3.setAttribute("action", Constants.Vesal_Anim_Action_MediaCall);
                elementCreateElement3.setAttribute(NotificationCompat.CATEGORY_CALL, "play");
                elementCreateElement3.setAttribute("playfrom", String.valueOf(0));
            }
            if (triggerType == AnimationTriggerType.ON_PAGE_CLICK) {
                elementCreateElement3.setAttribute("type", "Clicked");
            } else if (triggerType == AnimationTriggerType.NONE) {
                elementCreateElement3.setAttribute("type", "noClick");
            } else {
                elementCreateElement3.setAttribute("type", "Mixed");
            }
            float triggerDelayTime = animationEffect.getTiming().getTriggerDelayTime();
            if (triggerDelayTime < 0.0f || triggerDelayTime > 999.0f) {
                elementCreateElement3.setAttribute("waittime", AppEventsConstants.EVENT_PARAM_VALUE_NO);
            } else {
                elementCreateElement3.setAttribute("waittime", String.valueOf(triggerDelayTime));
            }
            element4.appendChild(elementCreateElement3);
            i2++;
            i3 = i5 + 1;
            spiredemo = this;
            document2 = document;
            count = i4;
            mainSequence = animationEffectCollection;
        }
    }

    /* JADX INFO: renamed from: spireDemo$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$spire$presentation$drawing$animation$TimeNodePresetClassType;

        static {
            int[] iArr = new int[TimeNodePresetClassType.values().length];
            $SwitchMap$com$spire$presentation$drawing$animation$TimeNodePresetClassType = iArr;
            try {
                iArr[TimeNodePresetClassType.ENTRANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$spire$presentation$drawing$animation$TimeNodePresetClassType[TimeNodePresetClassType.EXIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$spire$presentation$drawing$animation$TimeNodePresetClassType[TimeNodePresetClassType.EMPHASIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void add_background_info_to_xml(ISlide iSlide, Document document, Element element) throws IOException {
        String str = String.valueOf(this.pageNum) + "_1.png";
        saveBackgroudPng(iSlide, str);
        Element elementCreateElement = document.createElement("BackGrounds");
        element.appendChild(elementCreateElement);
        Element elementCreateElement2 = document.createElement("BackGround");
        elementCreateElement2.setAttribute("id", String.valueOf(0));
        elementCreateElement2.setAttribute("Filename", str);
        elementCreateElement.appendChild(elementCreateElement2);
    }

    public void getAnimationShapes(ISlide iSlide) {
        this.animationShaps.clear();
        AnimationEffectCollection mainSequence = iSlide.getTimeline().getMainSequence();
        for (int i = 0; i < mainSequence.getCount(); i++) {
            Shape shapeTarget = mainSequence.get(i).getShapeTarget();
            if (mainSequence.get(i).getPresetClassType() == TimeNodePresetClassType.ENTRANCE) {
                this.ShapesDisplay.set(getShapeID(shapeTarget, iSlide), false);
            }
            if (!this.animationShaps.contains(shapeTarget)) {
                this.animationShaps.add(mainSequence.get(i).getShapeTarget());
            }
        }
    }

    public int getShapeID(IShape iShape, ISlide iSlide) {
        for (int i = 0; i < iSlide.getShapes().getCount(); i++) {
            if (iSlide.getShapes().get(i) == iShape) {
                return i;
            }
        }
        return -1;
    }

    public void saveBackgroudPng(ISlide iSlide, String str) throws IOException {
        for (int count = iSlide.getShapes().getCount(); count > 0; count--) {
            iSlide.getShapes().removeAt(count - 1);
        }
        ImageIO.write(iSlide.saveAsImage((int) this.destPresentation.getSlideSize().getSize().getWidth(), (int) this.destPresentation.getSlideSize().getSize().getHeight()), "PNG", new File(String.format(this.page_dir + "\\" + str, new Object[0])));
        iSlide.dispose();
    }

    public void closePPT() {
        Presentation presentation = this.destPresentation;
        if (presentation != null) {
            presentation.dispose();
        }
    }

    public void zipDIR() throws Exception {
        String str = this.destFolder + "\\" + this.vslFileName;
        Common_Value.DelFile(str);
        zipClass.toZip(this.exp_PPT_format_path, new FileOutputStream(new File(str)), true);
    }

    public static void main(String[] strArr) throws Exception {
        if (!new File(pptDir).exists()) {
            System.out.println(pptDir + " file not founded!");
            return;
        }
        if (!new File(folderDir).exists()) {
            System.out.println(folderDir + "directory not founded!");
            return;
        }
        spireDemo spiredemo = new spireDemo();
        Common_Value common_Value = new Common_Value();
        ConvertPPT convertPPT = new ConvertPPT();
        common_Value.Init_Common_Value(pptDir, folderDir);
        convertPPT.initConvert(pptDir, common_Value);
        spiredemo.pptSplit(pptDir, folderDir);
        spiredemo.produce_PPT_xml_file(pptDir, convertPPT);
        common_Value.deleteFolder(Common_Value.weike_outputdir);
        common_Value.deleteFolder(folderDir + "\\TempPPTX");
    }
}

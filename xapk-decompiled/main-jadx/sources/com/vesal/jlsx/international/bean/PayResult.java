package com.vesal.jlsx.international.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class PayResult implements Serializable {
    private String jsonStr;
    private int state;

    public PayResult(int i, String str) {
        this.state = i;
        this.jsonStr = str;
    }

    public int getState() {
        return this.state;
    }

    public void setState(int i) {
        this.state = i;
    }

    public String getJsonStr() {
        return this.jsonStr;
    }

    public void setJsonStr(String str) {
        this.jsonStr = str;
    }
}

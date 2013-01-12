package com.dss.data.bean;


public class CreditOperation {

    private long transactId;
    private long clientId;
    private long formId;
    private String result;

    public long getTransactId() {
        return transactId;
    }

    public void setTransactId(long transactId) {
        this.transactId = transactId;
    }

    public long getClientId() {
        return clientId;
    }

    public void setClientId(long clientId) {
        this.clientId = clientId;
    }

    public long getFormId() {
        return formId;
    }

    public void setFormId(long formId) {
        this.formId = formId;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}

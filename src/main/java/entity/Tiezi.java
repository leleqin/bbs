package entity;

import java.util.Date;

public class Tiezi {
    private int tid;
    private String title;
    private String tcontent;
    private Date tdate;
    private int tnum1;
    private int tnum2;
    private int pid;
    private int uid;

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTcontent() {
        return tcontent;
    }

    public void setTcontent(String tcontent) {
        this.tcontent = tcontent;
    }

    public Date getTdate() {
        return tdate;
    }

    public void setTdate(Date tdate) {
        this.tdate = tdate;
    }

    public int getTnum1() {
        return tnum1;
    }

    public void setTnum1(int tnum1) {
        this.tnum1 = tnum1;
    }

    public int getTnum2() {
        return tnum2;
    }

    public void setTnum2(int tnum2) {
        this.tnum2 = tnum2;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}

package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "xiangmujinzhan")
public class Xiangmujinzhan implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xiangmuxinxiid")
    private Integer xiangmuxinxiid;
    @Column(name = "xiangmubianhao")
    private String xiangmubianhao;
    @Column(name = "xiangmumingcheng")
    private String xiangmumingcheng;
    @Column(name = "xiangmuleixing")
    private String xiangmuleixing;
    @Column(name = "riqi")
    private String riqi;
    @Column(name = "shifouyiwancheng")
    private String shifouyiwancheng;
    @Column(name = "jinzhanneirong")
    private String jinzhanneirong;
    @Column(name = "caozuoren")
    private String caozuoren;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public Integer getXiangmuxinxiid() {
        return xiangmuxinxiid;
    }
    public void setXiangmuxinxiid(Integer xiangmuxinxiid) {
        this.xiangmuxinxiid = xiangmuxinxiid == null ? 0 : xiangmuxinxiid;
    }

    public String getXiangmubianhao() {
        return xiangmubianhao;
    }
    public void setXiangmubianhao(String xiangmubianhao) {
        this.xiangmubianhao = xiangmubianhao == null ? "" : xiangmubianhao.trim();
    }

    public String getXiangmumingcheng() {
        return xiangmumingcheng;
    }
    public void setXiangmumingcheng(String xiangmumingcheng) {
        this.xiangmumingcheng = xiangmumingcheng == null ? "" : xiangmumingcheng.trim();
    }

    public String getXiangmuleixing() {
        return xiangmuleixing;
    }
    public void setXiangmuleixing(String xiangmuleixing) {
        this.xiangmuleixing = xiangmuleixing == null ? "" : xiangmuleixing.trim();
    }

    public String getRiqi() {
        return riqi;
    }
    public void setRiqi(String riqi) {
        this.riqi = riqi == null ? "" : riqi.trim();
    }

    public String getShifouyiwancheng() {
        return shifouyiwancheng;
    }
    public void setShifouyiwancheng(String shifouyiwancheng) {
        this.shifouyiwancheng = shifouyiwancheng == null ? "" : shifouyiwancheng.trim();
    }

    public String getJinzhanneirong() {
        return jinzhanneirong;
    }
    public void setJinzhanneirong(String jinzhanneirong) {
        this.jinzhanneirong = jinzhanneirong == null ? "" : jinzhanneirong.trim();
    }

    public String getCaozuoren() {
        return caozuoren;
    }
    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren == null ? "" : caozuoren.trim();
    }

}

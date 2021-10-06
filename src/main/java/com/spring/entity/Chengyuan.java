package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "chengyuan")
public class Chengyuan implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zhanghao")
    private String zhanghao;
    @Column(name = "mima")
    private String mima;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "xingbie")
    private String xingbie;
    @Column(name = "shengri")
    private String shengri;
    @Column(name = "nianling")
    private Integer nianling;
    @Column(name = "dianhua")
    private String dianhua;
    @Column(name = "xiangmu")
    private String xiangmu;
    @Column(name = "addtime")
    private String addtime;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getZhanghao() {
        return zhanghao;
    }
    public void setZhanghao(String zhanghao) {
        this.zhanghao = zhanghao == null ? "" : zhanghao.trim();
    }

    public String getMima() {
        return mima;
    }
    public void setMima(String mima) {
        this.mima = mima == null ? "" : mima.trim();
    }

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getXingbie() {
        return xingbie;
    }
    public void setXingbie(String xingbie) {
        this.xingbie = xingbie == null ? "" : xingbie.trim();
    }

    public String getShengri() {
        return shengri;
    }
    public void setShengri(String shengri) {
        this.shengri = shengri == null ? "" : shengri.trim();
    }

    public Integer getNianling() {
        return nianling;
    }
    public void setNianling(Integer nianling) {
        this.nianling = nianling == null ? 0 : nianling;
    }

    public String getDianhua() {
        return dianhua;
    }
    public void setDianhua(String dianhua) {
        this.dianhua = dianhua == null ? "" : dianhua.trim();
    }

    public String getXiangmu() {
        return xiangmu;
    }
    public void setXiangmu(String xiangmu) {
        this.xiangmu = xiangmu == null ? "" : xiangmu.trim();
    }

    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? "" : addtime.trim();
    }

}

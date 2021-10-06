package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "zhidaoxiangmu")
public class Zhidaoxiangmu implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zhuanjiaid")
    private Integer zhuanjiaid;
    @Column(name = "zhuanjiabianhao")
    private String zhuanjiabianhao;
    @Column(name = "zhuanjiaxingming")
    private String zhuanjiaxingming;
    @Column(name = "zhidaoxiangmu")
    private String zhidaoxiangmu;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "addtime")
    private String addtime;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public Integer getZhuanjiaid() {
        return zhuanjiaid;
    }
    public void setZhuanjiaid(Integer zhuanjiaid) {
        this.zhuanjiaid = zhuanjiaid == null ? 0 : zhuanjiaid;
    }

    public String getZhuanjiabianhao() {
        return zhuanjiabianhao;
    }
    public void setZhuanjiabianhao(String zhuanjiabianhao) {
        this.zhuanjiabianhao = zhuanjiabianhao == null ? "" : zhuanjiabianhao.trim();
    }

    public String getZhuanjiaxingming() {
        return zhuanjiaxingming;
    }
    public void setZhuanjiaxingming(String zhuanjiaxingming) {
        this.zhuanjiaxingming = zhuanjiaxingming == null ? "" : zhuanjiaxingming.trim();
    }

    public String getZhidaoxiangmu() {
        return zhidaoxiangmu;
    }
    public void setZhidaoxiangmu(String zhidaoxiangmu) {
        this.zhidaoxiangmu = zhidaoxiangmu == null ? "" : zhidaoxiangmu.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? "" : addtime.trim();
    }

}

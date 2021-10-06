package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "zhuanjia")
public class Zhuanjia implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zhuanjiabianhao")
    private String zhuanjiabianhao;
    @Column(name = "zhuanjiaxingming")
    private String zhuanjiaxingming;
    @Column(name = "zhuanjiaxingbie")
    private String zhuanjiaxingbie;
    @Column(name = "dianhua")
    private String dianhua;
    @Column(name = "jiguan")
    private String jiguan;
    @Column(name = "addtime")
    private String addtime;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getZhuanjiaxingbie() {
        return zhuanjiaxingbie;
    }
    public void setZhuanjiaxingbie(String zhuanjiaxingbie) {
        this.zhuanjiaxingbie = zhuanjiaxingbie == null ? "" : zhuanjiaxingbie.trim();
    }

    public String getDianhua() {
        return dianhua;
    }
    public void setDianhua(String dianhua) {
        this.dianhua = dianhua == null ? "" : dianhua.trim();
    }

    public String getJiguan() {
        return jiguan;
    }
    public void setJiguan(String jiguan) {
        this.jiguan = jiguan == null ? "" : jiguan.trim();
    }

    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? "" : addtime.trim();
    }

}

package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "yuanquzichan")
public class Yuanquzichan implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zichanbianhao")
    private String zichanbianhao;
    @Column(name = "zichanmingcheng")
    private String zichanmingcheng;
    @Column(name = "zichanleixing")
    private String zichanleixing;
    @Column(name = "zichanshuliang")
    private Integer zichanshuliang;
    @Column(name = "zichanjianjie")
    private String zichanjianjie;
    @Column(name = "addtime")
    private String addtime;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getZichanbianhao() {
        return zichanbianhao;
    }
    public void setZichanbianhao(String zichanbianhao) {
        this.zichanbianhao = zichanbianhao == null ? "" : zichanbianhao.trim();
    }

    public String getZichanmingcheng() {
        return zichanmingcheng;
    }
    public void setZichanmingcheng(String zichanmingcheng) {
        this.zichanmingcheng = zichanmingcheng == null ? "" : zichanmingcheng.trim();
    }

    public String getZichanleixing() {
        return zichanleixing;
    }
    public void setZichanleixing(String zichanleixing) {
        this.zichanleixing = zichanleixing == null ? "" : zichanleixing.trim();
    }

    public Integer getZichanshuliang() {
        return zichanshuliang;
    }
    public void setZichanshuliang(Integer zichanshuliang) {
        this.zichanshuliang = zichanshuliang == null ? 0 : zichanshuliang;
    }

    public String getZichanjianjie() {
        return zichanjianjie;
    }
    public void setZichanjianjie(String zichanjianjie) {
        this.zichanjianjie = zichanjianjie == null ? "" : zichanjianjie.trim();
    }

    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? "" : addtime.trim();
    }

}

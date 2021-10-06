package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "zichanfenpei")
public class Zichanfenpei implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "yuanquzichanid")
    private Integer yuanquzichanid;
    @Column(name = "fenpeibianhao")
    private String fenpeibianhao;
    @Column(name = "zichanbianhao")
    private String zichanbianhao;
    @Column(name = "zichanmingcheng")
    private String zichanmingcheng;
    @Column(name = "zichanleixing")
    private String zichanleixing;
    @Column(name = "fenpeidaoxiangmu")
    private String fenpeidaoxiangmu;
    @Column(name = "peifenshuliang")
    private Integer peifenshuliang;
    @Column(name = "fenpeibeizhu")
    private String fenpeibeizhu;
    @Column(name = "caozuoren")
    private String caozuoren;
    @Column(name = "addtime")
    private String addtime;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public Integer getYuanquzichanid() {
        return yuanquzichanid;
    }
    public void setYuanquzichanid(Integer yuanquzichanid) {
        this.yuanquzichanid = yuanquzichanid == null ? 0 : yuanquzichanid;
    }

    public String getFenpeibianhao() {
        return fenpeibianhao;
    }
    public void setFenpeibianhao(String fenpeibianhao) {
        this.fenpeibianhao = fenpeibianhao == null ? "" : fenpeibianhao.trim();
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

    public String getFenpeidaoxiangmu() {
        return fenpeidaoxiangmu;
    }
    public void setFenpeidaoxiangmu(String fenpeidaoxiangmu) {
        this.fenpeidaoxiangmu = fenpeidaoxiangmu == null ? "" : fenpeidaoxiangmu.trim();
    }

    public Integer getPeifenshuliang() {
        return peifenshuliang;
    }
    public void setPeifenshuliang(Integer peifenshuliang) {
        this.peifenshuliang = peifenshuliang == null ? 0 : peifenshuliang;
    }

    public String getFenpeibeizhu() {
        return fenpeibeizhu;
    }
    public void setFenpeibeizhu(String fenpeibeizhu) {
        this.fenpeibeizhu = fenpeibeizhu == null ? "" : fenpeibeizhu.trim();
    }

    public String getCaozuoren() {
        return caozuoren;
    }
    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren == null ? "" : caozuoren.trim();
    }

    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? "" : addtime.trim();
    }

}
